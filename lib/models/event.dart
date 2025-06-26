import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  final String id;
  final String childId;
  final String category;
  final String time;
  final String description;

  Event({
    required this.id,
    required this.childId,
    required this.category,
    required this.time,
    required this.description,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}
