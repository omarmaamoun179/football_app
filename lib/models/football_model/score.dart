import 'package:equatable/equatable.dart';

import 'full_time.dart';

class Score extends Equatable {
  final String? winner;
  final String? duration;
  final FullTime? fullTime;

  const Score({this.winner, this.duration, this.fullTime});

  factory Score.fromJson(Map<String, dynamic> json) => Score(
        winner: json['winner'] as String?,
        duration: json['duration'] as String?,
        fullTime: json['fullTime'] == null
            ? null
            : FullTime.fromJson(json['fullTime'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'winner': winner,
        'duration': duration,
        'fullTime': fullTime?.toJson(),
      };

  @override
  List<Object?> get props => [winner, duration, fullTime];
}
