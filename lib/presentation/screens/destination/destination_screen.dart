// lib/presentation/screens/destination/destination_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../state/providers/travel_provider.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/region_card.dart';
import '../preferences/preferences_screen.dart';

class DestinationScreen extends ConsumerWidget {
  final String destination;

  const DestinationScreen({
    super.key,
    required this.destination,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRegions = ref.watch(selectedRegionsProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(destination),
        actions: [
          Visibility(
            visible: selectedRegions.isNotEmpty,
            child: TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PreferencesScreen(
                    destination: destination,
                    selectedRegions: selectedRegions,
                  ),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final researchAsync = ref.watch(destinationResearchProvider(destination));
          
          return researchAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, _) => Center(child: Text('Error: $error')),
            data: (research) => ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Select Regions to Visit'),
                ),
                ...research.data.research.regions.map((region) {
                  final isSelected = selectedRegions.contains(region);
                  return RegionCard(
                    region: region,
                    isSelected: isSelected,
                    onTap: () => ref.read(selectedRegionsProvider.notifier).toggleRegion(region),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}