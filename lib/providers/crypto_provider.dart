import 'package:binance_app/api/crypto_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cryptoProvider = Provider((ref) => CryptoApi());

final cryptoDataProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final api = ref.read(cryptoProvider);
  return api.getCryptoData();
});
