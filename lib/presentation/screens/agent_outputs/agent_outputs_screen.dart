import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../state/providers/agent_tab_provider.dart';
import '../../state/providers/travel_provider.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/error_widget.dart' as custom_error;
import 'widgets/agent_tab_view.dart';

class AgentOutputsScreen extends ConsumerWidget {
  final String destination;

  const AgentOutputsScreen({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = ref.watch(activeAgentTabProvider);
    final agentOutputs = ref.watch(allAgentOutputsProvider(destination));

    return Scaffold(
      appBar: AppBar(
        title: Text('Insights: $destination'),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Tab Bar
          Container(
            color: Theme.of(context).primaryColor,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: AgentTab.values.map((tab) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ChoiceChip(
                      label: Text(_getTabLabel(tab)),
                      selected: activeTab == tab,
                      selectedColor: Theme.of(context).colorScheme.secondary,
                      onSelected: (selected) {
                        if (selected) {
                          ref.read(activeAgentTabProvider.notifier).state = tab;
                        }
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          // Content
          Expanded(
            child: agentOutputs.when(
              data: (data) => AgentTabView(
                activeTab: activeTab,
                agentData: data,
              ),
              loading: () => const LoadingWidget(
                message: 'Loading insights...',
              ),
              error: (error, stack) => Center(
                child: custom_error.CustomErrorWidget(
                  message: 'Failed to load insights: ${error.toString()}',
                  onRetry: () => ref.refresh(allAgentOutputsProvider(destination)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getTabLabel(AgentTab tab) {
    return tab.toString().split('.').last
        .split('_')
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }
}