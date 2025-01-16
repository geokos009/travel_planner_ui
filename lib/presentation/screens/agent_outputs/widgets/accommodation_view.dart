import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class AccommodationView extends StatelessWidget {
  final AccommodationInfo? data;

  const AccommodationView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No accommodation information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Area Guide Section
          _buildSection(
            title: 'Area Guide',
            icon: Icons.location_city,
            content: _buildAreaGuide(),
          ),
          const SizedBox(height: 16),

          // Recommended Accommodations
          _buildSection(
            title: 'Recommended Places to Stay',
            icon: Icons.hotel,
            content: _buildRecommendations(),
          ),
          const SizedBox(height: 16),

          // Booking Tips
          _buildSection(
            title: 'Booking Tips',
            icon: Icons.tips_and_updates,
            content: _buildBookingTips(),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required Widget content,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.indigo),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildAreaGuide() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var area in data!.areaGuide.entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  area.key,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  area.value.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildRecommendations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.recommendations.map((recommendation) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      recommendation['name'] ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: _getPriceColor(recommendation['price_level']),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      recommendation['price_level'] ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                recommendation['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                children: (recommendation['amenities'] as List?)
                        ?.map((amenity) => Chip(
                              label: Text(
                                amenity.toString(),
                                style: const TextStyle(fontSize: 12),
                              ),
                              backgroundColor: Colors.grey[200],
                            ))
                        .toList() ??
                    [],
              ),
              const SizedBox(height: 4),
              Text(
                'Location: ${recommendation['location'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildBookingTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.bookingTips.map((tip) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.lightbulb_outline,
                size: 20,
                color: Colors.amber,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  tip,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Color _getPriceColor(String? priceLevel) {
    switch (priceLevel?.toLowerCase()) {
      case 'budget':
        return Colors.green;
      case 'mid-range':
        return Colors.orange;
      case 'luxury':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }
}