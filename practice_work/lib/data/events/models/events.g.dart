// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsResult _$EventsResultFromJson(Map<String, dynamic> json) => EventsResult(
      (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventsResultToJson(EventsResult instance) =>
    <String, dynamic>{
      'events': instance.events,
    };
