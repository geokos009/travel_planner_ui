// lib/presentation/widgets/attraction_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/research_model.dart';
import '../state/providers/travel_provider.dart';

class AttractionCard extends ConsumerWidget {
  final MainArea attraction;
  final Function(bool) onSelected;

  const AttractionCard({
    Key? key,
    required this.attraction,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAttractions = ref.watch(selectedAttractionsProvider);
    final isSelected = selectedAttractions
      .any((a) => a.name == attraction.name);  // Compare by name

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(attraction.name),
        subtitle: Text(attraction.description),
        trailing: Checkbox(
          value: isSelected,
          onChanged: (value) => onSelected(value ?? false),
        ),
      ),
    );
  }
}