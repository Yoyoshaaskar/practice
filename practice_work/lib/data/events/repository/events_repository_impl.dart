import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_work/core/error/failure.dart';
import 'package:practice_work/core/network/dio_client.dart';
import 'package:practice_work/data/events/models/events_response.dart';
import 'package:practice_work/domain/events/repository/events_repository.dart';

@Injectable(as: EventsRepository)
class EventsRepositoryImpl implements EventsRepository {
  final DioClient dioClient;

  EventsRepositoryImpl(this.dioClient);

  @override
  Future<Either<Failure, EventsResponse>> getEvents() async {
    try {
      final client = EventsClient(dioClient.baseApi);

      return Right(await client.getEvents());
    } catch (e) {
      return Left(UnavailableCacheFailure());
    }
  }
}
