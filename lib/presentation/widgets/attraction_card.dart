// lib/presentation/widgets/attraction_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/research_model.dart';
import '../state/providers/travel_provider.dart';

class AttractionCard extends ConsumerWidget {
  final Attraction attraction;
  final Function(bool) onSelected;

  const AttractionCard({
    Key? key,
    required this.attraction,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAttractions = ref.watch(selectedAttractionsProvider);
    final isSelected = selectedAttractions.contains(attraction);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: CheckboxListTile(
        title: Text(attraction.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(attraction.description),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 4),
                Text(attraction.timeRequired),
                const SizedBox(width: 16),
                const Icon(Icons.attach_money, size: 16),
                const SizedBox(width: 4),
                Text(attraction.costRange),
              ],
            ),
          ],
        ),
        value: isSelected,
        onChanged: (value) => onSelected(value ?? false),
      ),
    );
  }
}