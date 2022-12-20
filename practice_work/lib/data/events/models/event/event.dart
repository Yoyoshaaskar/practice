import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  @JsonKey(name: 'strLeague')
  final String? league;
  @JsonKey(name: 'dateEvent')
  final String? dateEvent;
  @JsonKey(name: 'strHomeTeam')
  final String? homeTeam;
  @JsonKey(name: 'strAwayTeam')
  final String? awayTeam;
  @JsonKey(name: 'strStatus')
  final String? strStatus;
  @JsonKey(name: 'intHomeScore')
  final String? homeScore;
  @JsonKey(name: 'intAwayScore')
  final String? awayScore;

  Event(this.league, this.dateEvent, this.homeTeam, this.awayTeam,
      this.strStatus, this.homeScore, this.awayScore);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
