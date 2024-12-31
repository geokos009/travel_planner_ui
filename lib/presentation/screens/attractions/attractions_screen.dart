// lib/presentation/screens/attractions/attractions_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../../data/models/user_preferences.dart';
import '../../state/providers/travel_provider.dart';

class AttractionsScreen extends ConsumerStatefulWidget {
  final String destination;
  final UserPreferences preferences;

  const AttractionsScreen({
    super.key,
    required this.destination,
    required this.preferences,
  });

  @override
  ConsumerState<AttractionsScreen> createState() => _AttractionsScreenState();
}

class _AttractionsScreenState extends ConsumerState<AttractionsScreen> {
  Widget _buildAttractionsList(BuildContext context, ResearchModel research) {
    // Filter attractions based on selected regions
    final selectedRegionNames = widget.preferences.baseLocations
        .map((location) => location.name)
        .toSet();

    // Update this line to use the correct path to attractions
    final attractions = research.data.research.data.research.attractions;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ...attractions.entries.map((entry) {
          final category = entry.key;
          final categoryAttractions = entry.value.where(
            (attraction) => selectedRegionNames.contains(attraction.region)
          ).toList();

          if (categoryAttractions.isEmpty) return const SizedBox.shrink();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              ...categoryAttractions.map((attraction) => Card(
                // Attraction card implementation
                child: ListTile(
                  title: Text(attraction.name),
                  subtitle: Text(attraction.description),
                  trailing: Checkbox(
                    value: ref.watch(selectedAttractionsProvider).contains(attraction),
                    onChanged: (bool? value) {
                      ref.read(selectedAttractionsProvider.notifier).toggleAttraction(attraction);
                    },
                  ),
                ),
              )).toList(),
              const SizedBox(height: 24),
            ],
          );
        }).toList(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final researchAsync = ref.watch(destinationResearchProvider(widget.destination));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Attractions'),
      ),
      body: researchAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
        data: (research) => _buildAttractionsList(context, research),
      ),
    );
  }
}