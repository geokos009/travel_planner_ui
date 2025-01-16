import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class CulturalView extends StatelessWidget {
  final CulturalInfo? data;

  const CulturalView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No cultural information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Local Traditions Section
          _buildSection(
            title: 'Local Traditions & Customs',
            icon: Icons.celebration,
            content: _buildTraditions(),
          ),
          const SizedBox(height: 16),

          // Cultural Etiquette Section
          _buildSection(
            title: 'Cultural Etiquette',
            icon: Icons.people,
            content: _buildEtiquette(),
          ),
          const SizedBox(height: 16),

          // Festivals & Events Section
          _buildSection(
            title: 'Festivals & Events',
            icon: Icons.event,
            content: _buildFestivals(),
          ),
          const SizedBox(height: 16),

          // Do's and Don'ts Section
          _buildSection(
            title: 'Cultural Do\'s and Don\'ts',
            icon: Icons.rule,
            content: _buildDosAndDonts(),
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
                Icon(icon, color: Colors.deepPurple),
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

  Widget _buildTraditions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.traditions.map((tradition) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tradition['name'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tradition['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                'Significance: ${tradition['significance'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
              if (tradition['tips'] != null) ...[
                const SizedBox(height: 8),
                ...(tradition['tips'] as List).map((tip) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.tips_and_updates,
                            size: 16,
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
                    )),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEtiquette() {
    final etiquetteRules = data!.traditions
        .where((t) => t['category'] == 'etiquette')
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: etiquetteRules.map((rule) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.info_outline,
                size: 20,
                color: Colors.blue,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  rule.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildFestivals() {
    final festivals = data!.traditions
        .where((t) => t['category'] == 'festival')
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: festivals.map((festival) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                festival['name'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                festival['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDosAndDonts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Do's
        ..._buildList(
          title: 'Do\'s',
          items: data!.traditions
              .where((t) => t['category'] == 'do')
              .toList(),
          icon: Icons.check_circle,
          color: Colors.green,
        ),
        const SizedBox(height: 16),
        // Don'ts
        ..._buildList(
          title: 'Don\'ts',
          items: data!.traditions
              .where((t) => t['category'] == 'dont')
              .toList(),
          icon: Icons.cancel,
          color: Colors.red,
        ),
      ],
    );
  }

  List<Widget> _buildList({
    required String title,
    required List<Map<String, dynamic>> items,
    required IconData icon,
    required Color color,
  }) {
    return [
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 8),
      ...items.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 20, color: color),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    item.toString(),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          )),
    ];
  }
}