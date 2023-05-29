import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/football_model/football_model.dart';

class ApiService {
  Future<FootballModel> getMatches() async {
   
    try {
      Uri url = Uri.parse(
          'https://api.football-data.org//v4//matches/327125/head2head?limit=15');
      http.Response response = await http.get(url,
          headers: {"X-Auth-Token": "02974092620b401597436ba5874d1022"});
      log('Response statusCode : ${response.statusCode}');
      Map<String, dynamic> data = await jsonDecode(response.body);
      FootballModel footballModel = FootballModel.fromJson(data);
      if (data[footballModel] != null) {
        throw data['message'];
      }
      print(data[footballModel.matches![0].homeTeam!.crest]);
      return footballModel;
    } on Exception catch (e) {
      throw e.toString();
    }
  }
}
