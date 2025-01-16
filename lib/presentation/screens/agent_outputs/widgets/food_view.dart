import 'package:flutter/material.dart';
import '../../../../data/models/agent_outputs_model.dart';

class FoodView extends StatelessWidget {
  final FoodInfo? data;

  const FoodView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No food information available'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Local Dishes Section
          _buildSection(
            title: 'Must-Try Local Dishes',
            icon: Icons.restaurant_menu,
            content: _buildLocalDishes(),
          ),
          const SizedBox(height: 16),

          // Dining Etiquette Section
          _buildSection(
            title: 'Dining Etiquette',
            icon: Icons.dinner_dining,
            content: _buildDiningEtiquette(),
          ),
          const SizedBox(height: 16),

          // Food Markets & Areas
          _buildSection(
            title: 'Best Food Markets & Areas',
            icon: Icons.storefront,
            content: _buildFoodMarkets(),
          ),
          const SizedBox(height: 16),

          // Dietary Considerations
          _buildSection(
            title: 'Dietary Considerations',
            icon: Icons.food_bank,
            content: _buildDietaryInfo(),
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
                Icon(icon, color: Colors.orange),
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

  Widget _buildLocalDishes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.localDishes.map((dish) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      dish['name'] ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (dish['must_try'] == true)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Must Try!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                dish['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                'Where to try: ${dish['where_to_try'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Price Range: ${dish['price_range'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDiningEtiquette() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: data!.diningEtiquette.map((etiquette) {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      etiquette['tip'] ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (etiquette['explanation'] != null)
                      Text(
                        etiquette['explanation']!,
                        style: const TextStyle(
                          fontSize: 12,
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

  Widget _buildFoodMarkets() {
    final markets = data!.localDishes
        .where((dish) => dish['type'] == 'market')
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: markets.map((market) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                market['name'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                market['description'] ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                'Best Time to Visit: ${market['best_time'] ?? ''}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildDietaryInfo() {
    final dietaryInfo = data!.localDishes
        .where((dish) => dish['type'] == 'dietary_info')
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: dietaryInfo.map((info) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.restaurant,
                size: 20,
                color: Colors.green,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  info.toString(),
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