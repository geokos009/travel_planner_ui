// lib/presentation/screens/attractions/attractions_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/user_preferences.dart';
import '../../../data/models/research_model.dart';
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
  final Set<Attraction> _selectedAttractions = {};

  @override
  Widget build(BuildContext context) {
    final researchAsync = ref.watch(destinationResearchProvider(widget.destination));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Attractions'),
        actions: [
          TextButton(
            onPressed: _selectedAttractions.isNotEmpty ? _onCreateItinerary : null,
            child: const Text(
              'Create Itinerary',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: researchAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (research) => _buildAttractionsList(context, research),
      ),
    );
  }

  Widget _buildAttractionsList(BuildContext context, ResearchModel research) {
    // Filter attractions based on selected regions
    final selectedRegionNames = widget.preferences.baseLocations
        .map((location) => location.name)
        .toSet();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        ...research.data.research.attractions.entries.map((entry) {
          final category = entry.key;
          final attractions = entry.value.where(
            (attraction) => selectedRegionNames.contains(attraction.region)
          ).toList();

          if (attractions.isEmpty) return const SizedBox.shrink();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              ...attractions.map((attraction) => Card(
                child: CheckboxListTile(
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
                  secondary: attraction.mustSee
                      ? const Tooltip(
                          message: 'Must-See Attraction',
                          child: Icon(Icons.star, color: Colors.amber),
                        )
                      : null,
                  value: _selectedAttractions.contains(attraction),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        _selectedAttractions.add(attraction);
                      } else {
                        _selectedAttractions.remove(attraction);
                      }
                    });
                  },
                  isThreeLine: true,
                ),
              )).toList(),
              const SizedBox(height: 24),
            ],
          );
        }).toList(),
      ],
    );
  }

  void _onCreateItinerary() {
    // Update preferences with selected attractions
    final updatedPreferences = UserPreferences(
      tripDuration: widget.preferences.tripDuration,
      tripStyle: widget.preferences.tripStyle,
      budgetLevel: widget.preferences.budgetLevel,
      baseLocations: widget.preferences.baseLocations,
      entryPoint: widget.preferences.entryPoint,
      selectedAttractions: _selectedAttractions.toList(),
    );

    // Update the preferences in the provider
    ref.read(userPreferencesProvider.notifier).updatePreferences(updatedPreferences);

    // TODO: Navigate to itinerary screen
    // For now, show a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Creating your itinerary...')),
    );
  }
}