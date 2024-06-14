// screens/cryptos_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/crypto_provider.dart';
import '../widgets/crypto_list_item.dart';

class CryptosScreen extends ConsumerWidget {
  const CryptosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cryptoAsyncValue = ref.watch(cryptoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cryptos',
        ),
        centerTitle: true,
      ),
      body: cryptoAsyncValue.when(
        data: (cryptoList) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: cryptoList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: CryptoListItem(crypto: cryptoList[index]),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => const Center(child: Text('Failed to load data')),
      ),
    );
  }
}
