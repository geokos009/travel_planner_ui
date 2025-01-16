import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class ShoppingView extends StatelessWidget {
  final ShoppingInfo? data;

  const ShoppingView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No shopping information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Shopping Areas Section
          _buildSection(
            title: 'Shopping Areas',
            icon: Icons.store,
            content: _buildShoppingAreas(),
          ),
          const SizedBox(height: 16),

          // Local Products Section
          _buildSection(
            title: 'Must-Buy Local Products',
            icon: Icons.shopping_bag,
            content: _buildLocalProducts(),
          ),
          const SizedBox(height: 16),

          // Shopping Tips
          _buildSection(
            title: 'Shopping Tips',
            icon: Icons.tips_and_updates,
            content: _buildShoppingTips(),
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
                Icon(icon, color: Colors.pink),
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

  Widget _buildShoppingAreas() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.shoppingAreas.map((area) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      area['name'] ?? '',
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
                      color: _getPriceLevelColor(area['price_level']),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      area['price_level'] ?? '',
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
                'Type: ${area['type'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                children: (area['specialties'] as List?)
                        ?.map((specialty) => Chip(
                              label: Text(
                                specialty.toString(),
                                style: const TextStyle(fontSize: 12),
                              ),
                              backgroundColor: Colors.grey[200],
                            ))
                        .toList() ??
                    [],
              ),
              const SizedBox(height: 4),
              Text(
                'Best Time: ${area['best_time'] ?? ''}',
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

  Widget _buildLocalProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.localProducts.map((product) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product['name'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Category: ${product['category'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Price Range: ${product['price_range'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Where to Buy: ${product['where_to_buy'] ?? ''}',
                style: const TextStyle(fontSize: 14),
              ),
              if (product['bargaining_tips'] != null) ...[
                const SizedBox(height: 8),
                ...(product['bargaining_tips'] as List).map((tip) => Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.monetization_on,
                            size: 16,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              tip.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                              ),
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

  Widget _buildShoppingTips() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.shoppingTips.map((tip) {
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

  Color _getPriceLevelColor(String? priceLevel) {
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