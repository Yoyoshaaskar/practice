part of 'events_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState.initial() = _Initial;

  const factory EventsState.error({required Failure failure}) = _Error;

  const factory EventsState.loaded({required EventsResponse eventsResponse}) =
      _Loaded;
}
