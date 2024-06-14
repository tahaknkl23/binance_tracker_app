// widgets/crypto_list_item.dart
import 'package:flutter/material.dart';
import '../models/crypto_model.dart';

class CryptoListItem extends StatelessWidget {
  final Data crypto;

  const CryptoListItem({super.key, required this.crypto});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(crypto.name ?? 'Unknown'),
      subtitle: Text('Price: ${crypto.priceUsd ?? 'N/A'} USD'),
    );
  }
}
