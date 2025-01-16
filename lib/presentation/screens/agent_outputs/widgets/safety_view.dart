import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class SafetyView extends StatelessWidget {
  final SafetyInfo? data;

  const SafetyView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No safety information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Overall Safety Section
          _buildSection(
            title: 'Overall Safety Assessment',
            icon: Icons.security,
            content: _buildOverallSafety(),
          ),
          const SizedBox(height: 16),

          // Areas to Avoid Section
          _buildSection(
            title: 'Areas to Exercise Caution',
            icon: Icons.warning,
            content: _buildAreasToAvoid(),
          ),
          const SizedBox(height: 16),

          // Common Scams Section
          _buildSection(
            title: 'Common Scams to Watch For',
            icon: Icons.policy,
            content: _buildCommonScams(),
          ),
          const SizedBox(height: 16),

          // Safety Tips Section
          _buildSection(
            title: 'Essential Safety Tips',
            icon: Icons.tips_and_updates,
            content: _buildSafetyTips(),
          ),
          const SizedBox(height: 16),

          // Health Safety Section
          _buildSection(
            title: 'Health & Medical Safety',
            icon: Icons.local_hospital,
            content: _buildHealthSafety(),
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

  Widget _buildOverallSafety() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data!.overallSafety.toString(),
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildAreasToAvoid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.areasToAvoid.map((area) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.place, size: 20, color: Colors.red),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  area.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCommonScams() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.commonScams.map((scam) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.warning_amber, size: 20, color: Colors.orange),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  scam.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSafetyTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.safetyTips.map((tip) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.check_circle, size: 20, color: Colors.green),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  tip.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHealthSafety() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data!.healthSafety.toString(),
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}