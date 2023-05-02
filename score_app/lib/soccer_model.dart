import 'dart:convert';

import 'package:flutter/material.dart';

class SoccerMatch {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;
  SoccerMatch(
    this.fixture,
    this.home,
    this.away,
    this.goal,
  );
  factory SoccerMatch.fromJson(Map<String, dynamic> json) {
    return SoccerMatch(
      Fixture.fromJson(json['fixture']),
      Team.fromJson(json['teams']['home']),
      Team.fromJson(json['teams']['away']),
      Goal.fromJson(json['goals']),
    );
  }
}

// here store the fixture data
class Fixture {
  int id;
  String data;
  Status status;
  Fixture(this.id, this.data, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['data'], Status.fromJson(json['status']));
  }
}

//here store the match status
class Status {
  int elapsedTime;
  String long;
  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['long']);
  }
}

class Team {
  int id;
  String name, logoURL;
  bool winner;
  Team(this.id, this.name, this.logoURL, this.winner);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo'], json['winner']);
  }
}

class Goal {
  int home;
  int away;

  Goal(this.home, this.away);

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
