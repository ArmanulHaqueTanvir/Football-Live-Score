import 'package:flutter/material.dart';

import 'soccer_model.dart';

Widget matchTile(SoccerMatch match) {
  var homeGoal = match.goal.home;
  var awayGoal = match.goal.away;

  if (homeGoal == null) homeGoal = 0;
  if (awayGoal == null) awayGoal = 0;

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            match.home.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match.home.logoURL,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            "$homeGoal - $awayGoal",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
        Image.network(
          match.away.logoURL,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            match.away.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}
