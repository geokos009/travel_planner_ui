// lib/presentation/screens/destination/destination_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../state/providers/travel_provider.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/region_card.dart';

class DestinationScreen extends ConsumerWidget {
  final String destination;

  const DestinationScreen({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final researchAsync = ref.watch(destinationResearchProvider(destination));
    final selectedRegions = ref.watch(selectedRegionsProvider);

    print('Building DestinationScreen for: $destination');

    return Scaffold(
      appBar: AppBar(
        title: Text(destination),
        actions: [
          if (selectedRegions.isNotEmpty)
            TextButton(
              onPressed: () {
                // TODO: Navigate to preferences screen
              },
              child: const Text('Next'),
            ),
        ],
      ),
      body: researchAsync.when(
        loading: () => const LoadingWidget(
          message: 'Researching destination...\nThis may take a few minutes',
        ),
        error: (error, stack) {
          print('Error in DestinationScreen: $error');
          print('Stack trace: $stack');
          return CustomErrorWidget(
            message: 'Failed to load destination information\nError: ${error.toString()}',
            onRetry: () => ref.refresh(destinationResearchProvider(destination)),
          );
        },
        data: (research) {
          print('Received research data: $research');
          return DestinationContent(research: research);
        },
      ),
    );
  }
}

class DestinationContent extends ConsumerWidget {
  final ResearchModel research;

  const DestinationContent({
    super.key,
    required this.research,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRegions = ref.watch(selectedRegionsProvider);
    final researchDetails = research.data.research;

    print('Building DestinationContent');
    print('Research details: $researchDetails');
    print('Regions count: ${researchDetails.regions.length}');
    print('Entry points count: ${researchDetails.entryPoints.length}');
    print('Attractions categories: ${researchDetails.attractions.keys.toList()}');

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Select Regions to Visit',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        if (researchDetails.regions.isEmpty)
          const Center(
            child: Text('No regions available'),
          )
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: researchDetails.regions.length,
            itemBuilder: (context, index) {
              final region = researchDetails.regions[index];
              final isSelected = selectedRegions.contains(region);

              print('Building region card for: ${region.name}');

              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: RegionCard(
                  region: region,
                  isSelected: isSelected,
                  onTap: () {
                    final notifier = ref.read(selectedRegionsProvider.notifier);
                    if (isSelected) {
                      notifier.state = selectedRegions.where((r) => r != region).toList();
                    } else {
                      notifier.state = [...selectedRegions, region];
                    }
                  },
                ),
              );
            },
          ),

        // Entry Points Section
        if (researchDetails.entryPoints.isNotEmpty) ...[
          const SizedBox(height: 32),
          Text(
            'Entry Points',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: researchDetails.entryPoints.length,
            itemBuilder: (context, index) {
              final entryPoint = researchDetails.entryPoints[index];
              print('Building entry point card for: ${entryPoint.name}');
              
              return Card(
                child: ListTile(
                  title: Text(entryPoint.name),
                  subtitle: Text('${entryPoint.type} - ${entryPoint.location}'),
                  trailing: Text(entryPoint.code),
                ),
              );
            },
          ),
        ],

        // Attractions Section
        if (researchDetails.attractions.isNotEmpty) ...[
          const SizedBox(height: 32),
          Text(
            'Attractions by Category',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          ...researchDetails.attractions.entries.map((entry) {
            final category = entry.key;
            final attractions = entry.value;
            
            print('Building attractions for category: $category (${attractions.length} items)');
            
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: attractions.length,
                  itemBuilder: (context, index) {
                    final attraction = attractions[index];
                    print('Building attraction card for: ${attraction.name}');
                    
                    return Card(
                      child: ListTile(
                        title: Text(attraction.name),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(attraction.description),
                            const SizedBox(height: 4),
                            Text(
                              '${attraction.timeRequired} • ${attraction.bestTiming} • ${attraction.costRange}',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        trailing: attraction.mustSee
                            ? const Icon(Icons.star, color: Colors.amber)
                            : null,
                        isThreeLine: true,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            );
          }).toList(),
        ],
      ],
    );
  }
}