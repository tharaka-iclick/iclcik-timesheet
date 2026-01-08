import 'package:dartz/dartz.dart';
import 'package:iclick_timesheet/core/error/failure.dart';
import 'package:iclick_timesheet/core/typedef/typedef.dart';
import 'package:iclick_timesheet/modules/auth/data/datasources/auth_remote_data_source.dart';
import 'package:iclick_timesheet/modules/auth/domain/entity/auth_user_entity.dart';
import 'package:iclick_timesheet/modules/auth/domain/repositories/auth_user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthUserRepository)
class AuthRepositoryImpl implements AuthUserRepository {

  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  ResultFuture<AuthUserEntity> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final result = await authRemoteDataSource.signInWithEmailAndPassword(
        email,
        password,
      );
      return result.fold(
        (failure) => Left(failure),
        (user) => Right(AuthUserEntity(
          id: user.id,
          email: user.email,
          name: user.name,
        )),
      );
    } catch (e) {
      return Left(Failure(message: e.toString(), title: "Sign In Failed"));
    }
  }

  @override
   ResultFuture<AuthUserEntity> getCurrentUser() async {
    try {
      final result = await authRemoteDataSource.getCurrentUser();
      return result.fold(
        (failure) => Left(failure),
        (user) {
          if (user == null) {
            return Left(
              Failure(message: "No user logged in", title: "Get User Failed"),
            );
          }
          return Right(AuthUserEntity(
            id: user.id,
            email: user.email,
            name: user.name,
          ));
        },
      );
    } catch (e) {
      return Left(Failure(message: e.toString(), title: "Get User Failed"));
    }
  }

  @override
  ResultFuture<void> signOut() async{
    try {
      final result = await authRemoteDataSource.signOut();
      return result.fold(
        (failure) => Left(failure),
        (user) => Right(null),
      );
    } catch (e) {
      return Left(Failure(message: e.toString(), title: "Sign Out Failed"));
    }
  }

  @override
  ResultFuture<AuthUserEntity> signUpWithEmailAndPassword(String email, String password, String name) async {
    try {
      final result = await authRemoteDataSource.signUpWithEmailAndPassword(email, password, name);
      return result.fold(
        (failure) => Left(failure),
        (user) => Right(AuthUserEntity(
          id: user.id,
          email: user.email,
          name: user.name,
        )),
      );
    } catch (e) {
      return Left(Failure(message: e.toString(), title: "Sign Up Failed"));
    }
  }
}