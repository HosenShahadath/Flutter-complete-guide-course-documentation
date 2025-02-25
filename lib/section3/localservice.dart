import 'dart:convert';
import 'person.dart';
import 'package:flutter/services.dart';

class LocalService {
  // Load and decode the JSON File
  Future<String> _loadPersonAsset() async {
    return await rootBundle.loadString('assets/data/info.json');
  }

  // Load and decode the JSON File
  Future<Person> loadPerson() async {
    String jsonString = await _loadPersonAsset();
    // json.decode() is used to convert JSON String to JSON Map
    final jsonResponse = json.decode(jsonString);
    return Person.fromJson(jsonResponse);
  }
}