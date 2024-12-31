// lib/presentation/screens/preferences/preferences_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/research_model.dart';
import '../../../data/models/user_preferences.dart';
import '../../state/providers/travel_provider.dart';
import '../../../data/models/base_location.dart';
import '../attractions/attractions_screen.dart';
// import '../../state/notifiers/user_preferences_notifier.dart';


class PreferencesScreen extends ConsumerStatefulWidget {
  final String destination;
  final List<Region> selectedRegions;

  const PreferencesScreen({
    super.key,
    required this.destination,
    required this.selectedRegions,
  });

  @override
  ConsumerState<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends ConsumerState<PreferencesScreen> {
  String _tripDuration = '5-7 days';
  String _travelStyle = 'Cultural';
  String _budgetLevel = 'Standard';
  EntryPoint? _selectedEntryPoint;

  final List<String> _tripDurations = [
    '3-5 days',
    '5-7 days',
    '7-10 days',
    '10-14 days',
    '14-21 days'
  ];

  final List<String> _travelStyles = [
    'Cultural',
    'Adventure',
    'Relaxation',
    'Shopping',
    'Nature',
    'Food & Dining'
  ];

  final List<String> _budgetLevels = [
    'Budget',
    'Standard',
    'Luxury'
  ];

  @override
  Widget build(BuildContext context) {
    final researchAsync = ref.watch(destinationResearchProvider(widget.destination));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Travel Preferences'),
        actions: [
          TextButton(
            onPressed: _onNextPressed,
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
      body: researchAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (research) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Selected Regions Section
            Text(
              'Selected Regions',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ...widget.selectedRegions.map((region) => Card(
              child: ListTile(
                title: Text(region.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Recommended stay: ${region.recommendedStay['comfortable']}'),
                    Text('Highlights: ${region.highlights.join(", ")}'),
                  ],
                ),
                isThreeLine: true,
              ),
            )).toList(),
            
            const SizedBox(height: 32),

            // Entry Point Section
            _buildEntryPointSection(context, research),

            const SizedBox(height: 32),

            // Trip Duration Section
            Text(
              'Trip Duration',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('How long do you plan to stay?'),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: _tripDuration,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      items: _tripDurations.map((duration) {
                        return DropdownMenuItem(
                          value: duration,
                          child: Text(duration),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _tripDuration = value;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Travel Style Section
            Text(
              'Travel Style',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('What\'s your preferred travel style?'),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: _travelStyles.map((style) {
                        return ChoiceChip(
                          label: Text(style),
                          selected: _travelStyle == style,
                          onSelected: (selected) {
                            if (selected) {
                              setState(() {
                                _travelStyle = style;
                              });
                            }
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Budget Level Section
            Text(
              'Budget Level',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('What\'s your budget level?'),
                    const SizedBox(height: 16),
                    SegmentedButton<String>(
                      segments: _budgetLevels.map((level) {
                        return ButtonSegment<String>(
                          value: level,
                          label: Text(level),
                        );
                      }).toList(),
                      selected: {_budgetLevel},
                      onSelectionChanged: (Set<String> selection) {
                        setState(() {
                          _budgetLevel = selection.first;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEntryPointSection(BuildContext context, ResearchModel research) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Entry Point',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Select your arrival point:'),
                const SizedBox(height: 8),
                ...research.data.research.data.research.entryPoints.map((entryPoint) {
                  return RadioListTile<EntryPoint>(
                    title: Text(entryPoint.name),
                    subtitle: Text('${entryPoint.type} - ${entryPoint.location}'),
                    value: entryPoint,
                    groupValue: _selectedEntryPoint,
                    onChanged: (EntryPoint? value) {
                      setState(() {
                        _selectedEntryPoint = value;
                      });
                    },
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }


  void _onNextPressed() {
  if (_selectedEntryPoint == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please select an entry point')),
    );
    return;
  }

  final preferences = UserPreferences(
    tripDuration: _tripDuration,
    tripStyle: _travelStyle,
    budgetLevel: _budgetLevel,
    baseLocations: widget.selectedRegions.map((region) => 
      BaseLocationExtension.fromRegion(region)).toList(),  // Use the extension here
    entryPoint: _selectedEntryPoint!,
    selectedAttractions: [],
  );

  ref.read(userPreferencesProvider.notifier).updatePreferences(preferences);

  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => AttractionsScreen(
        destination: widget.destination,
        preferences: preferences,
      ),
    ),
  );
}
}
