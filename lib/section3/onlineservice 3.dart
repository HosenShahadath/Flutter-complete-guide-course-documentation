import 'dart:convert';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'package:http/http.dart' as http;

class OnlineService3 {
  Future<List<Quote>> getQuotes() async{
    final response = await http.get(Uri.parse('https://jsonguide.technologychannel.org/quotes.json'));

    // decode json
    final json = jsonDecode(response.body).cast<Map<String, dynamic>>();

    // convert Json to quote
    return json.map<Quote>((json) => Quote.fromJson(json)).toList();
  }
}