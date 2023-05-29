import 'package:equatable/equatable.dart';

class Area extends Equatable {
  final int? id;
  final String? name;
  final String? code;
  final String? flag;

  const Area({this.id, this.name, this.code, this.flag});

  factory Area.fromJson(Map<String, dynamic> json) => Area(
        id: json['id'] as int?,
        name: json['name'] as String?,
        code: json['code'] as String?,
        flag: json['flag'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'code': code,
        'flag': flag,
      };

  @override
  List<Object?> get props => [id, name, code, flag];
}
