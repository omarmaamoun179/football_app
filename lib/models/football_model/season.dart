import 'package:equatable/equatable.dart';

class Season extends Equatable {
  final int? id;
  final String? startDate;
  final String? endDate;
  final int? currentMatchday;
  final dynamic winner;

  const Season({
    this.id,
    this.startDate,
    this.endDate,
    this.currentMatchday,
    this.winner,
  });

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        id: json['id'] as int?,
        startDate: json['startDate'] as String?,
        endDate: json['endDate'] as String?,
        currentMatchday: json['currentMatchday'] as int?,
        winner: json['winner'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'startDate': startDate,
        'endDate': endDate,
        'currentMatchday': currentMatchday,
        'winner': winner,
      };

  @override
  List<Object?> get props {
    return [
      id,
      startDate,
      endDate,
      currentMatchday,
      winner,
    ];
  }
}
