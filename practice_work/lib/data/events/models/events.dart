import 'package:json_annotation/json_annotation.dart';
import 'package:practice_work/data/events/models/event/event.dart';

part 'events.g.dart';

@JsonSerializable()
class EventsResult {
  @JsonKey(name: 'events')
  final List<Event> events;

  EventsResult(this.events);

  Map<String, dynamic> toJson() => _$EventsResultToJson(this);

  factory EventsResult.fromJson(Map<String, dynamic> json) =>
      _$EventsResultFromJson(json);
}
