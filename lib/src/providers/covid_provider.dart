import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:covid19_model/src/models/response_model.dart';

class CovidProvider {
  String _url = 'https://covid-193.p.rapidapi.com/statistics';
  String _apiKey = 'e0bcfa6b29msh11944bf1f6beddap14af7ajsn12f7d86204d7';
  String _host = 'covid-193.p.rapidapi.com';

  Future<Response> getCovid() async {
    Response responses = new Response();
    final response = await http.get('$_url?country=Ecuador',
        headers: {'x-rapidapi-host': _host, 'x-rapidapi-key': _apiKey});
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      responses = Response.fromJsonMap(decodedData['response'][0]);
      print(responses.toString());
    } else {
      throw new Exception('Fallo al obtener las peliculas');
    }
    return responses;
  }

} 
