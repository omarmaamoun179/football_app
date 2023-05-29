import 'package:equatable/equatable.dart';

import 'match.dart';

class FootballModel extends Equatable {
  final List<Match>? matches;

  const FootballModel({this.matches});

  factory FootballModel.fromJson(Map<String, dynamic> json) => FootballModel(
        matches: (json['matches'] as List<dynamic>?)
            ?.map((e) => Match.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'matches': matches?.map((e) => e.toJson()).toList(),
      };
      static List<FootballModel> newsFromSnapshot(List newSnapshot) {
    return newSnapshot.map((json) {
      return FootballModel.fromJson(json);
    }).toList();
  }

  @override
  List<Object?> get props => [matches];
}
