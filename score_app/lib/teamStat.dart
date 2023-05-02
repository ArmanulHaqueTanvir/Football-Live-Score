import 'package:flutter/material.dart';

Widget teamStat(String team, String logoURL, String teamName) {
  return Expanded(
      child: Column(
    children: [
      Text(
        team,
        style: const TextStyle(
          fontSize: 18.0,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Expanded(
        child: Image.network(
          logoURL,
          width: 54.0,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        teamName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18.0,
        ),
      ),
    ],
  ));
}
