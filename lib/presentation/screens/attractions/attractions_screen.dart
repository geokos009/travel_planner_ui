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
        // Safely access the main areas
        final mainAreas = research.data.research.data?.data.coreInfo.mainAreas ?? [];
        
        // Group attractions by region
        Map<String, List<MainArea>> groupedAttractions = {};
        for (var baseLocation in preferences.baseLocations) {
          groupedAttractions[baseLocation.name] = mainAreas
              .where((a) => a.name == baseLocation.name)
              .toList();
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Select Attractions'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/itinerary');
                },
                child: const Text('Next'),
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
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      region,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  ...regionAttractions.map((area) => 
                    AttractionCard(
                      attraction: area,
                      onSelected: (selected) {
                        // Handle selection
                      },
                    ),
                  ).toList(),
                ],
              );
            },
          ),
        );
      },
    );
  }
}