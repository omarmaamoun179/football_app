import 'package:equatable/equatable.dart';

class Competition extends Equatable {
  final int? id;
  final String? name;
  final String? code;
  final String? type;
  final String? emblem;

  const Competition({
    this.id,
    this.name,
    this.code,
    this.type,
    this.emblem,
  });

  factory Competition.fromJson(Map<String, dynamic> json) => Competition(
        id: json['id'] as int?,
        name: json['name'] as String?,
        code: json['code'] as String?,
        type: json['type'] as String?,
        emblem: json['emblem'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'code': code,
        'type': type,
        'emblem': emblem,
      };

  @override
  List<Object?> get props => [id, name, code, type, emblem];
}
