import 'package:flutter/material.dart';
import 'package:score_app/goal_state.dart';
import 'package:score_app/matchTile.dart';
import 'package:score_app/soccer_model.dart';
import 'package:score_app/teamStat.dart';

Widget PageBody(List<SoccerMatch>? allMatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat("HOME Team", allMatches![0].home.logoURL,
                    allMatches[0].home.name),
                goalStat(allMatches[0].fixture.status.elapsedTime,
                    allMatches[0].goal.home, allMatches[0].goal.away),
                teamStat("AWAY Team", allMatches[0].away.logoURL,
                    allMatches[0].away.name),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 224, 68, 143),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allMatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(
                        allMatches[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
