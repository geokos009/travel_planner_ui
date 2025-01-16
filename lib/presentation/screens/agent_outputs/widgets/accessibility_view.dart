import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class AccessibilityView extends StatelessWidget {
  final AccessibilityInfo? data;

  const AccessibilityView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No accessibility information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Transport Accessibility Section
          _buildSection(
            title: 'Transportation Accessibility',
            icon: Icons.accessible,
            content: _buildTransportAccess(),
          ),
          const SizedBox(height: 16),

          // Accessible Venues Section
          _buildSection(
            title: 'Accessible Venues & Attractions',
            icon: Icons.place,
            content: _buildAccessibleVenues(),
          ),
          const SizedBox(height: 16),

          // Accessibility Tips Section
          _buildSection(
            title: 'Accessibility Tips',
            icon: Icons.tips_and_updates,
            content: _buildAccessibilityTips(),
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
                Icon(icon, color: Colors.blue),
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

  Widget _buildTransportAccess() {
    final transport = data!.transportAccess;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var mode in transport.entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mode.key,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                if (mode.value is Map<String, dynamic>) ...[
                  if (mode.value['availability'] != null)
                    Row(
                      children: [
                        Icon(
                          _getAvailabilityIcon(mode.value['availability']),
                          size: 16,
                          color: _getAvailabilityColor(mode.value['availability']),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Availability: ${mode.value['availability']}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  if (mode.value['features'] != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (mode.value['features'] as List)
                            .map((feature) => Text(
                                  '• $feature',
                                  style: const TextStyle(fontSize: 14),
                                ))
                            .toList(),
                      ),
                    ),
                ],
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildAccessibleVenues() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.accessibleVenues.map((venue) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      venue['name'] ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (venue['rating'] != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getRatingColor(venue['rating']),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Rating: ${venue['rating']}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 4),
              if (venue['features'] != null)
                Wrap(
                  spacing: 8,
                  children: (venue['features'] as List)
                      .map((feature) => Chip(
                            label: Text(
                              feature.toString(),
                              style: const TextStyle(fontSize: 12),
                            ),
                            backgroundColor: Colors.blue[50],
                          ))
                      .toList(),
                ),
              if (venue['notes'] != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    venue['notes'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildAccessibilityTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.accessibilityTips.map((tip) {
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

  IconData _getAvailabilityIcon(String? availability) {
    switch (availability?.toLowerCase()) {
      case 'high':
        return Icons.check_circle;
      case 'medium':
        return Icons.info;
      case 'low':
        return Icons.warning;
      default:
        return Icons.info_outline;
    }
  }

  Color _getAvailabilityColor(String? availability) {
    switch (availability?.toLowerCase()) {
      case 'high':
        return Colors.green;
      case 'medium':
        return Colors.orange;
      case 'low':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Color _getRatingColor(String? rating) {
    if (rating == null) return Colors.grey;
    final numRating = double.tryParse(rating) ?? 0;
    if (numRating >= 4) return Colors.green;
    if (numRating >= 3) return Colors.orange;
    return Colors.red;
  }
}