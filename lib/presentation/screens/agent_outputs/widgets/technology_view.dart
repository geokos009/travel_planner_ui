import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class TechnologyView extends StatelessWidget {
  final TechnologyInfo? data;

  const TechnologyView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No technology information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Connectivity Section
          _buildSection(
            title: 'Internet & Connectivity',
            icon: Icons.wifi,
            content: _buildConnectivity(),
          ),
          const SizedBox(height: 16),

          // Useful Apps Section
          _buildSection(
            title: 'Recommended Apps',
            icon: Icons.apps,
            content: _buildUsefulApps(),
          ),
          const SizedBox(height: 16),

          // Tech Tips Section
          _buildSection(
            title: 'Technology Tips',
            icon: Icons.tips_and_updates,
            content: _buildTechTips(),
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

  Widget _buildConnectivity() {
    final connectivity = data!.connectivity;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // WiFi Section
        if (connectivity['wifi'] != null) ...[
          _buildSubSection(
            title: 'WiFi',
            icon: Icons.wifi,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Availability: ${connectivity['wifi']['availability']}',
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  'Typical Speeds: ${connectivity['wifi']['typical_speeds']}',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Public Hotspots:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ...(connectivity['wifi']['public_hotspots'] as List)
                    .map((hotspot) => Padding(
                          padding: const EdgeInsets.only(left: 16, top: 2),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on,
                                  size: 16, color: Colors.red),
                              const SizedBox(width: 4),
                              Text(
                                hotspot.toString(),
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ))
                    ,
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Mobile Data Section
        if (connectivity['mobile_data'] != null) ...[
          _buildSubSection(
            title: 'Mobile Data',
            icon: Icons.phone_android,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...(connectivity['mobile_data'] as List).map((provider) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          provider['provider'] ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Coverage: ${provider['coverage']}',
                          style: const TextStyle(fontSize: 14),
                        ),
                        if (provider['packages'] != null) ...[
                          const SizedBox(height: 4),
                          ...(provider['packages'] as List).map((package) =>
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 16, top: 4, bottom: 4),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      package['name'] ?? '',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('Data: ${package['data']}'),
                                    Text('Duration: ${package['duration']}'),
                                    Text(
                                      'Cost: ${package['cost']}',
                                      style:
                                          const TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ],
                    )),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildUsefulApps() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.usefulApps.map((app) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      app['name'] ?? '',
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
                      color: app['cost'] == 'Free' ? Colors.green : Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      app['cost'] ?? '',
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
                'Category: ${app['category']}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                app['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              if (app['offline_capability'] == true)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Works Offline',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildTechTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.techTips.map((tip) {
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

  Widget _buildSubSection({
    required String title,
    required IconData icon,
    required Widget content,
  }) {
    return Column(
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
        const SizedBox(height: 8),
        content,
      ],
    );
  }
}