import 'package:binance_app/models/crypto_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  final Dio _dio = Dio();

  final _baseUrl = "https://api.coinlore.net/api/tickers/";

  Future<List<Data>> fetchCryptoData() async {
    final response = await _dio.get(_baseUrl);
    if (response.statusCode == 200) {
      debugPrint(response.toString());

      final data = response.data["data"] as List;
      final cryptoList = data.map((e) => Data.fromJson(e)).toList();
      return cryptoList;
    } else {
      throw Exception("Failed to load data");
    }
  }
}
