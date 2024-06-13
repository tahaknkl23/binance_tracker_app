import 'package:binance_app/models/crypto_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  final Dio _dio = Dio();

  final _baseUrl = "https://api.coinlore.net/api/tickers/";

  Future<List<CryptoModel>> fetchCryptoData() async {
    final response = await _dio.get(_baseUrl);
    if (response.statusCode == 200) {
      final data = response.data["data"] as List;
      return data.map((e) => CryptoModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load data");
    }

    // debugPrint(response.data.toString());
    // final data = response.data["data"] as List;
    // return data.map((e) => CryptoModel.fromJson(e)).toList();
  }
}
