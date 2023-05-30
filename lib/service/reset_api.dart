import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/football_model.dart';

class ApiService {
  FootballModel? footballModel;

Future<void> resetAPI() async {
  // Define the URL and headers for the API
  String url = 'https://api.football-data.org//v4//matches/327125/head2head?limit=15';
  Map<String, String> headers = {
    "X-Auth-Token": "02974092620b401597436ba5874d1022"
  };

  // Send the GET request and handle the response
  try {
    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      // Parse the JSON data from the response body
      Map<String, dynamic> data = jsonDecode(response.body);
      // Create a new FootballModel instance from the JSON data
      footballModel = FootballModel.fromJson(data);
      // Do something with the football model
      print(footballModel!.matches![0].homeTeam!.crest);
    } else {
      // Handle the error
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Handle the exception
    print('Exception: $e');
  }
}

}
