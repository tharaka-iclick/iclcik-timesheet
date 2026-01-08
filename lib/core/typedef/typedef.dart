
import 'package:dartz/dartz.dart';
import 'package:iclick_timesheet/core/error/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;