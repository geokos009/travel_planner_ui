// lib/presentation/widgets/region_card.dart
import 'package:flutter/material.dart';
import '../../data/models/research_model.dart';

class RegionCard extends StatelessWidget {
  final Region region;
  final bool isSelected;
  final VoidCallback onTap;

  const RegionCard({
    super.key,
    required this.region,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Colors.blue.shade100 : null, // Visual feedback
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      region.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  if (isSelected)
                    const Icon(Icons.check_circle, color: Colors.blue),
                ],
              ),
              Text(region.description),
              Text('Recommended stay: ${region.recommendedStay["comfortable"]}'),
            ],
          ),
        ),
      ),
    );
  }
}