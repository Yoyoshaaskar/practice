// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      json['strLeague'] as String?,
      json['dateEvent'] as String?,
      json['strHomeTeam'] as String?,
      json['strAwayTeam'] as String?,
      json['strStatus'] as String?,
      json['intHomeScore'] as String?,
      json['intAwayScore'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'strLeague': instance.league,
      'dateEvent': instance.dateEvent,
      'strHomeTeam': instance.homeTeam,
      'strAwayTeam': instance.awayTeam,
      'strStatus': instance.strStatus,
      'intHomeScore': instance.homeScore,
      'intAwayScore': instance.awayScore,
    };
