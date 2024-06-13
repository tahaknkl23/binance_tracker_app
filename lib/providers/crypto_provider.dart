import 'package:binance_app/providers/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/crypto_model.dart';

final cryptoProvider = FutureProvider<List<CryptoModel>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchCryptoData();
});
