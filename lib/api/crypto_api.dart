import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CryptoApi {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://api.binance.com/api/v3/ticker/24hr';

  Future<Map<String, dynamic>> getCryptoData() async {
    try {
      final Response response = await _dio.get('$_baseUrl/your-endpoint');
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return {};
  }
}
