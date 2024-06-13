import 'package:binance_app/models/crypto_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/crypto_provider.dart'; // Bu kısmı düzenledim

class CryptoScreen extends ConsumerWidget {
  const CryptoScreen({super.key}); // Key tipi olarak düzenlendi

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<CryptoModel>> cryptoAsyncValue = ref.watch(cryptoProvider); // AsyncValue tipi belirtildi

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cryptos'),
      ),
      body: cryptoAsyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (cryptoModels) {
          return ListView.builder(
            itemCount: cryptoModels.length,
            itemBuilder: (context, index) {
              final cryptoModel = cryptoModels[index];
              " \$${cryptoModel.data?.first.priceUsd}";

              final data = cryptoModel.data ?? [];

              return ListTile(
                title: Text(cryptoModel.data?.first.name ?? ''),
                subtitle: Text(cryptoModel.data?.first.symbol ?? ''),
                trailing: Text('\$${cryptoModel.data?.first.priceUsd}'),
              );
            },
          );
        },
      ),
    );
  }
}
