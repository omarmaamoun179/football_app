import 'package:equatable/equatable.dart';

import 'area.dart';
import 'away_team.dart';
import 'competition.dart';
import 'home_team.dart';
import 'score.dart';
import 'season.dart';

class Match extends Equatable {
  final Area? area;
  final Competition? competition;
  final Season? season;
  final int? id;
  final String? utcDate;
  final String? status;
  final int? matchday;
  final String? stage;
  final dynamic group;
  final String? lastUpdated;
  final HomeTeam? homeTeam;
  final AwayTeam? awayTeam;
  final Score? score;

  const Match({
    this.area,
    this.competition,
    this.season,
    this.id,
    this.utcDate,
    this.status,
    this.matchday,
    this.stage,
    this.group,
    this.lastUpdated,
    this.homeTeam,
    this.awayTeam,
    this.score,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
        area: json['area'] == null
            ? null
            : Area.fromJson(json['area'] as Map<String, dynamic>),
        competition: json['competition'] == null
            ? null
            : Competition.fromJson(json['competition'] as Map<String, dynamic>),
        season: json['season'] == null
            ? null
            : Season.fromJson(json['season'] as Map<String, dynamic>),
        id: json['id'] as int?,
        utcDate: json['utcDate'] as String?,
        status: json['status'] as String?,
        matchday: json['matchday'] as int?,
        stage: json['stage'] as String?,
        group: json['group'] as dynamic,
        lastUpdated: json['lastUpdated'] as String?,
        homeTeam: json['homeTeam'] == null
            ? null
            : HomeTeam.fromJson(json['homeTeam'] as Map<String, dynamic>),
        awayTeam: json['awayTeam'] == null
            ? null
            : AwayTeam.fromJson(json['awayTeam'] as Map<String, dynamic>),
        score: json['score'] == null
            ? null
            : Score.fromJson(json['score'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'area': area?.toJson(),
        'competition': competition?.toJson(),
        'season': season?.toJson(),
        'id': id,
        'utcDate': utcDate,
        'status': status,
        'matchday': matchday,
        'stage': stage,
        'group': group,
        'lastUpdated': lastUpdated,
        'homeTeam': homeTeam?.toJson(),
        'awayTeam': awayTeam?.toJson(),
        'score': score?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      area,
      competition,
      season,
      id,
      utcDate,
      status,
      matchday,
      stage,
      group,
      lastUpdated,
      homeTeam,
      awayTeam,
      score,
    ];
  }
}
