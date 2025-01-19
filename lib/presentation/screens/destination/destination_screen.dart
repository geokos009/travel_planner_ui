// lib/presentation/screens/destination/destination_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../state/providers/travel_provider.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/region_card.dart';
import '../preferences/preferences_screen.dart';


// Add the DestinationContent widget
class DestinationContent extends ConsumerWidget {
  final ResearchModel research;

  const DestinationContent({
    super.key,
    required this.research,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRegions = ref.watch(selectedRegionsProvider);
    
    // Safely access the regions
    final mainAreas = research.data.research.data?.data.coreInfo.mainAreas ?? [];
    
    if (mainAreas.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No regions available for this destination'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.refresh(destinationResearchProvider(research.data.research.data?.destination ?? ''));
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Select Regions to Visit',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text(
          'Choose the regions you want to explore during your trip.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 16),
        ...mainAreas.map((area) {
          final isSelected = selectedRegions.any((r) => r.name == area.name);
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: RegionCard(
              region: area,
              isSelected: isSelected,
              onTap: () {
                print('Tapping region: ${area.name}');
                ref.read(selectedRegionsProvider.notifier).toggleRegion(area);
              },
            ),
          );
        }).toList(),
      ],
    );
  }
}

// Update the main DestinationScreen widget to use DestinationContent
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Select Regions'),
        actions: [
          TextButton(
            onPressed: selectedRegions.isNotEmpty ? () {
              print('Next button pressed with ${selectedRegions.length} regions selected');
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PreferencesScreen(
                    destination: destination,
                    selectedRegions: selectedRegions,
                  ),
                ),
              );
            } : null,
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
      body: Column(
        children: [
          // Selection counter
          Container(
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Row(
              children: [
                Icon(
                  Icons.place,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Selected Regions: ${selectedRegions.length}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: researchAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $error'),
                    ElevatedButton(
                      onPressed: () => ref.refresh(destinationResearchProvider(destination)),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              data: (research) {
                // Debug print to verify data
                print('Research data: ${research.data.research.data.research.regions}');
                
                return DestinationContent(research: research);
              },
            ),
          ),
        ],
      ),
      // Show bottom message if no regions selected
      bottomNavigationBar: selectedRegions.isEmpty ? Container(
        padding: const EdgeInsets.all(16),
        color: Colors.orange.shade100,
        child: const Text(
          'Please select at least one region to continue',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ) : null,
    );
  }
}