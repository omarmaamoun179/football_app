import 'package:equatable/equatable.dart';

class HomeTeam extends Equatable {
  final int? id;
  final String? name;
  final String? shortName;
  final String? tla;
  final String? crest;

  const HomeTeam({
    this.id,
    this.name,
    this.shortName,
    this.tla,
    this.crest,
  });

  factory HomeTeam.fromJson(Map<String, dynamic> json) => HomeTeam(
        id: json['id'] as int?,
        name: json['name'] as String?,
        shortName: json['shortName'] as String?,
        tla: json['tla'] as String?,
        crest: json['crest'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'shortName': shortName,
        'tla': tla,
        'crest': crest,
      };

  @override
  List<Object?> get props => [id, name, shortName, tla, crest];
}
