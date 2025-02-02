import 'package:flutter/material.dart';
import '../../data/models/research_model.dart';

class RegionCard extends StatelessWidget {
  final MainArea region;
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
      elevation: isSelected ? 4 : 1,
      color: isSelected ? Theme.of(context).primaryColor.withOpacity(0.1) : null,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                    Icon(
                      Icons.check_circle,
                      color: Theme.of(context).primaryColor,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                region.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Text(
                'Recommended stay: ${region.recommendedStay["comfortable"]}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                children: region.highlights.map((highlight) {
                  return Chip(
                    label: Text(highlight),
                    backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}