import 'package:flutter/material.dart';

class CurrencyView extends StatelessWidget {
  final Map<String, dynamic>? data;

  const CurrencyView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Center(child: Text('No currency information available'));
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Currency Information',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                // Add your currency information widgets here
                // Example:
                Text('Local Currency: ${data!['local_currency'] ?? 'N/A'}'),
                Text('Exchange Rate: ${data!['exchange_rate'] ?? 'N/A'}'),
                Text('Payment Methods: ${data!['payment_methods'] ?? 'N/A'}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}