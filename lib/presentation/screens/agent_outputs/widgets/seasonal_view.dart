import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class SeasonalView extends StatelessWidget {
  final SeasonalInfo? data;

  const SeasonalView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No seasonal information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Weather Patterns Section
          _buildSection(
            title: 'Weather Patterns',
            icon: Icons.wb_sunny,
            content: _buildWeatherPatterns(),
          ),
          const SizedBox(height: 16),

          // Seasonal Events
          _buildSection(
            title: 'Seasonal Events & Festivals',
            icon: Icons.event,
            content: _buildSeasonalEvents(),
          ),
          const SizedBox(height: 16),

          // Best Time to Visit
          _buildSection(
            title: 'Best Time to Visit',
            icon: Icons.calendar_today,
            content: _buildBestTimeToVisit(),
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
                Icon(icon, color: Colors.cyan),
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

  Widget _buildWeatherPatterns() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.weatherPatterns.entries.map((season) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    _getWeatherIcon(season.key),
                    color: _getSeasonColor(season.key),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    season.key,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Temperature: ${season.value['temperature'] ?? ''}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Precipitation: ${season.value['precipitation'] ?? ''}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    if (season.value['notes'] != null)
                      Text(
                        season.value['notes']!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSeasonalEvents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.seasonalEvents.map((event) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event['name'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.calendar_month, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    event['timing'] ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                event['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              if (event['significance'] != null) ...[
                const SizedBox(height: 4),
                Text(
                  'Significance: ${event['significance']}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildBestTimeToVisit() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.bestTimeToVisit.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry.key,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              ...entry.value.map((tip) => Padding(
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          size: 16,
                          color: Colors.green,
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
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }

  IconData _getWeatherIcon(String season) {
    switch (season.toLowerCase()) {
      case 'spring':
        return Icons.eco;
      case 'summer':
        return Icons.wb_sunny;
      case 'autumn':
      case 'fall':
        return Icons.park;
      case 'winter':
        return Icons.ac_unit;
      default:
        return Icons.cloud;
    }
  }

  Color _getSeasonColor(String season) {
    switch (season.toLowerCase()) {
      case 'spring':
        return Colors.green;
      case 'summer':
        return Colors.orange;
      case 'autumn':
      case 'fall':
        return Colors.brown;
      case 'winter':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}