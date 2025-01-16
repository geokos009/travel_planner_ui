import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class VisaView extends StatelessWidget {
  final VisaInfo? data;

  const VisaView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No visa information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Visa Requirements Section
          _buildSection(
            title: 'Visa Requirements',
            icon: Icons.article,
            content: _buildVisaRequirements(),
          ),
          const SizedBox(height: 16),

          // Application Process Section
          _buildSection(
            title: 'Application Process',
            icon: Icons.assignment,
            content: _buildApplicationProcess(),
          ),
          const SizedBox(height: 16),

          // Visa Tips Section
          _buildSection(
            title: 'Visa Tips',
            icon: Icons.tips_and_updates,
            content: _buildVisaTips(),
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
                Icon(icon, color: Colors.purple),
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

  Widget _buildVisaRequirements() {
    final requirements = data!.requirements;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var requirement in requirements.entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  requirement.key,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                if (requirement.value is Map<String, dynamic>) ...[
                  if (requirement.value['type'] != null)
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getVisaTypeColor(requirement.value['type']),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        requirement.value['type'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  if (requirement.value['documents'] != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (requirement.value['documents'] as List)
                            .map((doc) => Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.check_circle,
                                          size: 16, color: Colors.green),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          doc.toString(),
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
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

  Widget _buildApplicationProcess() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.processes.map((process) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${process['step'] ?? ''}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      process['title'] ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              if (process['description'] != null)
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 4),
                  child: Text(
                    process['description'],
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              if (process['timeline'] != null)
                Padding(
                  padding: const EdgeInsets.only(left: 32, top: 4),
                  child: Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 16, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(
                        process['timeline'],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
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

  Widget _buildVisaTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.visaTips.map((tip) {
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

  Color _getVisaTypeColor(String? type) {
    switch (type?.toLowerCase()) {
      case 'required':
        return Colors.red;
      case 'on arrival':
        return Colors.orange;
      case 'not required':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}