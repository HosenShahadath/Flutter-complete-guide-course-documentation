import 'dart:convert';
import 'package:flutter/services.dart';
import 'person 2.dart';

class LocalService {
  // Load and decode the JSON file
   Future<String> _loadPersonAsset() async {
     return await rootBundle.loadString('assets/data/info.json');
   }

   // Load and decode the Json file
  Future<Person> loadPerson() async{
     String jsonString = await _loadPersonAsset();
     final jsonResponse = json.decode(jsonString);

     return Person.fromJson(jsonResponse);
  }
}