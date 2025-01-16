import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class TransportationView extends StatelessWidget {
  final TransportationInfo? data;

  const TransportationView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No transportation information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Public Transport Section
          _buildSection(
            title: 'Public Transportation',
            icon: Icons.directions_bus,
            content: _buildPublicTransport(),
          ),
          const SizedBox(height: 16),

          // Taxi Services Section
          _buildSection(
            title: 'Taxi & Ride Services',
            icon: Icons.local_taxi,
            content: _buildTaxiServices(),
          ),
          const SizedBox(height: 16),

          // Transportation Tips
          _buildSection(
            title: 'Getting Around Tips',
            icon: Icons.tips_and_updates,
            content: _buildTransportationTips(),
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

  Widget _buildPublicTransport() {
    final transport = data!.publicTransport;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Metro/Subway
        if (transport['metro'] != null)
          _buildTransportType(
            title: 'Metro/Subway',
            icon: Icons.subway,
            info: transport['metro'],
          ),

        // Bus
        if (transport['bus'] != null)
          _buildTransportType(
            title: 'Bus System',
            icon: Icons.directions_bus,
            info: transport['bus'],
          ),

        // Train
        if (transport['train'] != null)
          _buildTransportType(
            title: 'Train Services',
            icon: Icons.train,
            info: transport['train'],
          ),

        // Fare Information
        if (transport['fares'] != null) ...[
          const SizedBox(height: 8),
          const Text(
            'Fare Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            transport['fares'].toString(),
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ],
    );
  }

  Widget _buildTransportType({
    required String title,
    required IconData icon,
    required dynamic info,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: Colors.blue),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            info.toString(),
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildTaxiServices() {
    final services = data!.taxiServices;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var service in services.entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service.key,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  service.value.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
                if (service.value is Map) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Estimated Cost: ${(service.value as Map)['cost'] ?? 'Varies'}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                ],
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildTransportationTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.transportationTips.map((tip) {
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
                  tip.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}