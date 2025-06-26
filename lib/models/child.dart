
import 'package:json_annotation/json_annotation.dart';

part 'child.g.dart';

@JsonSerializable()
class Child {
  final String id;
  final String name;
  final String imageUrl;

  Child({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
  Map<String, dynamic> toJson() => _$ChildToJson(this);
}
