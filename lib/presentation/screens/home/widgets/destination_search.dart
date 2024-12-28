// lib/presentation/screens/home/widgets/destination_search.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../state/providers/travel_provider.dart';

class DestinationSearch extends ConsumerStatefulWidget {
  final Function(String) onDestinationSelected;

  const DestinationSearch({
    super.key,
    required this.onDestinationSelected,
  });

  @override
  ConsumerState<DestinationSearch> createState() => _DestinationSearchState();
}

class _DestinationSearchState extends ConsumerState<DestinationSearch> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch() {
    final destination = _searchController.text.trim();
    if (destination.isNotEmpty) {
      ref.read(selectedDestinationProvider.notifier).state = destination;
      widget.onDestinationSelected(destination);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Enter destination (e.g., Tokyo, Japan)',
        suffixIcon: IconButton(
          icon: const Icon(Icons.search),
          onPressed: _onSearch,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      onSubmitted: (_) => _onSearch(),
    );
  }
}