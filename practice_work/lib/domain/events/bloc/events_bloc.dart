import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_work/core/error/failure.dart';
import 'package:practice_work/data/events/models/events_response.dart';
import 'package:practice_work/domain/events/repository/events_repository.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

@lazySingleton
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventsRepository eventsRepository;

  EventsBloc(this.eventsRepository) : super(_Initial()) {
    on<_FetchEvents>((event, emit) async {
      final result = await eventsRepository.getEvents();

      emit(result.fold((failure) {
        return _Error(failure: failure);
      }, (eventsResponse) {
        return _Loaded(eventsResponse: eventsResponse);
      }));
    });
  }
}
