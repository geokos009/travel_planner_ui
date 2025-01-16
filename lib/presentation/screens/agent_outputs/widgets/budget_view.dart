import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class BudgetView extends StatelessWidget {
  final BudgetInfo? data;

  const BudgetView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No budget information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Budget Breakdown Section
          _buildSection(
            title: 'Budget Breakdown',
            icon: Icons.account_balance_wallet,
            content: _buildBudgetBreakdown(),
          ),
          const SizedBox(height: 16),

          // Money Saving Tips Section
          _buildSection(
            title: 'Money Saving Tips',
            icon: Icons.savings,
            content: _buildMoneySavingTips(),
          ),
          const SizedBox(height: 16),

          // Seasonal Price Variations
          _buildSection(
            title: 'Seasonal Price Variations',
            icon: Icons.calendar_today,
            content: _buildSeasonalPrices(),
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
                Icon(icon, color: Colors.green),
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

  Widget _buildBudgetBreakdown() {
    final breakdown = data!.budgetBreakdown;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBudgetCategory(
          icon: Icons.hotel,
          title: 'Accommodation',
          details: breakdown['accommodation'],
        ),
        _buildBudgetCategory(
          icon: Icons.restaurant,
          title: 'Food',
          details: breakdown['food'],
        ),
        _buildBudgetCategory(
          icon: Icons.directions_bus,
          title: 'Transportation',
          details: breakdown['transportation'],
        ),
        _buildBudgetCategory(
          icon: Icons.attractions,
          title: 'Activities',
          details: breakdown['activities'],
        ),
        _buildBudgetCategory(
          icon: Icons.shopping_bag,
          title: 'Shopping',
          details: breakdown['shopping'],
        ),
      ],
    );
  }

  Widget _buildBudgetCategory({
    required IconData icon,
    required String title,
    required dynamic details,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.blue),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  details.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoneySavingTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.moneySavingTips.map((tip) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.check_circle,
                size: 20,
                color: Colors.green,
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

  Widget _buildSeasonalPrices() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.seasonalPriceVariations.map((season) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                season.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}