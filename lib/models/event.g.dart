// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
  id: json['id'] as String,
  childId: json['childId'] as String,
  category: json['category'] as String,
  time: json['time'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
  'id': instance.id,
  'childId': instance.childId,
  'category': instance.category,
  'time': instance.time,
  'description': instance.description,
};
