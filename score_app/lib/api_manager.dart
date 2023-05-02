// before the

import 'dart:convert';

import 'package:http/http.dart';
import 'package:score_app/soccer_model.dart';

class SoccerApi {
  final String apiURL =
      "https://v3.football.api-sports.io/fixtures?season=2023&league=39";

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "b445bbcff0mshdcf2326edb7ae82p1c6c23jsn7f39e1154944",
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(Uri(), headers: headers);

    var body;
    if (res.statusCode == 200) {
      // this mean that we are connected to the database
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api service : ${body}");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();

      return matches;
    }
    return body;
  }
}
