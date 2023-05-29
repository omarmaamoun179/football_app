import 'package:equatable/equatable.dart';

class FullTime extends Equatable {
  final int? home;
  final int? away;

  const FullTime({this.home, this.away});

  factory FullTime.fromJson(Map<String, dynamic> json) => FullTime(
        home: json['home'] as int?,
        away: json['away'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };

  @override
  List<Object?> get props => [home, away];
}
