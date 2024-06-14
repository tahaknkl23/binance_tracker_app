// providers/crypto_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/crypto_model.dart';
import '../services/crypto_services.dart';

final cryptoProvider = FutureProvider<List<Data>>((ref) async {
  final apiService = ApiService();
  return apiService.fetchCryptoData();
});
