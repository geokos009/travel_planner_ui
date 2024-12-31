// lib/presentation/screens/attractions/attractions_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../../data/models/user_preferences.dart';
import '../../state/providers/travel_provider.dart';
import '../../widgets/attraction_card.dart';

class AttractionsScreen extends ConsumerWidget {
  final String destination;
  final UserPreferences preferences;

  const AttractionsScreen({
    Key? key,
    required this.destination,
    required this.preferences,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final researchAsync = ref.watch(destinationResearchProvider(destination));

    return researchAsync.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, _) => Scaffold(
        body: Center(child: Text('Error: $error')),
      ),
      data: (research) {
        // Get all attractions from research data
        final allAttractions = research.data.research.data.research.attractions;
        
        // Create a list of all attractions
        final attractions = allAttractions.values.expand((list) => list).toList();
        
        // Group attractions by region
        Map<String, List<Attraction>> groupedAttractions = {};
        for (var baseLocation in preferences.baseLocations) {
          groupedAttractions[baseLocation.name] = attractions
              .where((a) => a.region == baseLocation.name)
              .toList();
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text('Select Attractions'),
            actions: [
              TextButton(
                onPressed: () {
                  // Update preferences with selected attractions
                  final selectedAttractions = ref.read(selectedAttractionsProvider);
                  final updatedPreferences = preferences.copyWith(
                    selectedAttractions: selectedAttractions,
                  );
                  
                  // Update preferences in provider
                  ref.read(userPreferencesProvider.notifier)
                    .updatePreferences(updatedPreferences);
                    
                  // Navigate to next screen
                  Navigator.pushNamed(context, '/itinerary');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: preferences.baseLocations.length,
            itemBuilder: (context, index) {
              final region = preferences.baseLocations[index].name;
              final regionAttractions = groupedAttractions[region] ?? [];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      region,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ...regionAttractions.map((attraction) => 
                    AttractionCard(
                      attraction: attraction,
                      onSelected: (selected) {
                        if (selected) {
                          ref.read(selectedAttractionsProvider.notifier)
                            .addAttraction(attraction);
                        } else {
                          ref.read(selectedAttractionsProvider.notifier)
                            .removeAttraction(attraction);
                        }
                      },
                    ),
                  ),
                  const Divider(height: 32),
                ],
              );
            },
          ),
        );
      },
    );
  }
}