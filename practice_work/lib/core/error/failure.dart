import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]) : super();

  @override
  List<dynamic> get props => [true];
}

class ServerFailure extends Failure {
  final String? message;
  final int? statusCode;
  const ServerFailure({
    this.message,
    this.statusCode,
  });
}

class RequestException extends Failure {
  final int? statusCode;
  final String? message;

  const RequestException({this.statusCode, this.message});
}

class BadRequestFailure extends ServerFailure {}

class AuthenticationFailure extends ServerFailure {}

class NotFoundFailure extends ServerFailure {}

class UserNotExists extends ServerFailure {}

class OldPasswordIncorrect extends ServerFailure {}

class UnavailableCacheFailure extends CacheFailure {}

class NoCacheFailure extends CacheFailure {}

class VerificationNeededFailure extends Failure {}

class CacheFailure extends Failure {}

class RuntimeFailure extends Failure {}

class UnknownFailure extends Failure {}
