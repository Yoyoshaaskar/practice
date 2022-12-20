import 'package:dartz/dartz.dart';
import 'package:practice_work/core/error/failure.dart';
import 'package:practice_work/data/events/models/events_response.dart';

abstract class EventsRepository {
  Future<Either<Failure, EventsResponse>> getEvents();
}
