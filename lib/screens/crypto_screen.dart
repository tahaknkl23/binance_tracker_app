import 'package:binance_app/providers/crypto_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({super.key, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto List'),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final cryptoDataAsync = watch(cryptoDataProvider);

          return cryptoDataAsync.when(
            data: (cryptoData) {
              // Verilere eriş ve kullan
              return ListView.builder(
                itemCount: cryptoData.length,
                itemBuilder: (context, index) {
                  final crypto = cryptoData[index.toString()];
                  return ListTile(
                    title: Text(crypto['name']),
                    subtitle: Text(crypto['country']),
                    onTap: () {
                      // Crypto item tapped
                    },
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Error: $error')),
          );
        },
      ),
    );
  }
}
