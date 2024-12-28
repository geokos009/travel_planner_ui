// lib/presentation/state/providers/loading_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingProvider = StateProvider<bool>((ref) => false);

final errorProvider = StateProvider<String?>((ref) => null);