import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/itinerary_model.dart';
import '../../state/providers/travel_provider.dart';

class ItineraryScreen extends ConsumerWidget {
  const ItineraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(userPreferencesProvider);
    if (preferences == null) {
      return const Scaffold(
        body: Center(child: Text('No preferences found')),
      );
    }

    final itineraryAsync = ref.watch(itineraryProvider(preferences));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Your Itinerary'),
      ),
      body: itineraryAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
        data: (itineraryData) => ListView.builder(
          itemCount: itineraryData.itinerary.length,
          itemBuilder: (context, index) {
            final day = itineraryData.itinerary[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Day Header
                  Container(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day ${index + 1}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          day.baseLocation,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  // Activities
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: day.activities.length,
                    itemBuilder: (context, activityIndex) {
                      final activity = day.activities[activityIndex];
                      return ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(activity.time),
                          ],
                        ),
                        title: Text(activity.activity),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(activity.description),
                            const SizedBox(height: 4),
                            Text(
                              'Duration: ${activity.duration}',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            if (activity.tips.isNotEmpty) ...[
                              const SizedBox(height: 4),
                              Text(
                                'Tips: ${activity.tips.join(", ")}',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ],
                        ),
                        isThreeLine: true,
                      );
                    },
                  ),
                  // Accommodation
                  if (day.accommodation != null) ...[
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Accommodation',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          Text(day.accommodation!.name),
                          Text(day.accommodation!.location),
                          Text('Check-in: ${day.accommodation!.checkIn}'),
                          Text('Check-out: ${day.accommodation!.checkOut}'),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}