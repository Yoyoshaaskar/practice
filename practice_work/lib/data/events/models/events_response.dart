import 'package:json_annotation/json_annotation.dart';
import 'package:practice_work/data/events/models/event/event.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'events_response.g.dart';

@RestApi(baseUrl: "https://www.thesportsdb.com/api/v1/json/40130162/")
abstract class EventsClient {
  factory EventsClient(Dio dio, {String baseUrl}) = _EventsClient;

  @GET('/eventspastleague.php?id=4328')
  Future<EventsResponse> getEvents();
}

@JsonSerializable()
class EventsResponse {
  @JsonKey(name: 'events', defaultValue: [])
  final List<Event>? eventsResult;

  EventsResponse({
    this.eventsResult,
  });

  factory EventsResponse.fromJson(Map<String, dynamic> json) =>
      _$EventsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventsResponseToJson(this);
}
