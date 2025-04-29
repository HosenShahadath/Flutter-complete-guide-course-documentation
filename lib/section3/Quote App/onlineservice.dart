import 'dart:convert';
import 'package:flutter_framework_practice/section3/Quote%20App/qoute.dart';
import 'package:http/http.dart' as http;

class OnlineServices {
  Future<List<Quote>> getQuotes() async {
    final response = await http.get(
      Uri.parse('https://jsonguide.technologychannel.org/quotes.json'),
    );

    final json = jsonDecode(response.body).cast<Map<String, dynamic>>();

    return json.map<Quote>((json) => Quote.fromJson(json)).toList();
  }
}
