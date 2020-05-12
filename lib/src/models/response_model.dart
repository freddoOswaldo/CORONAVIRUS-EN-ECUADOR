import 'package:covid19_model/src/models/cases_model.dart';
import 'package:covid19_model/src/models/deaths_model.dart';
import 'package:covid19_model/src/models/total_model.dart';

class Response {
  String country;
  Cases cases;
  Deaths deaths;
  Tests tests;
  String day;
  String time;

  Response({
    this.country,
    this.cases,
    this.deaths,
    this.tests,
    this.day,
    this.time,
  });

    Response.fromJsonMap(Map<String, dynamic> response) {
    country = response['country'];
    cases = new Cases.fromJsonMap(response['cases']);
    deaths = new Deaths.fromJsonMap(response['deaths']);
    tests = new Tests.fromJsonMap(response['tests']);
    day = response['day'];
    time = response['time'];
  }

  @override
  String toString() {
    return 'Response(country: $country, cases: $cases, deaths: $deaths, tests: $tests, day: $day, time: $time)';
  }
}




