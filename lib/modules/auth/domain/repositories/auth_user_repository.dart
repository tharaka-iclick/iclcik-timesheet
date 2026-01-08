import 'package:dartz/dartz.dart';
import 'package:iclick_timesheet/core/error/failure.dart';
import 'package:iclick_timesheet/core/typedef/typedef.dart';
import 'package:iclick_timesheet/modules/auth/domain/entity/auth_user_entity.dart';

abstract interface class AuthUserRepository {
  ResultFuture<AuthUserEntity> signInWithEmailAndPassword(
    String email,
    String password,
  );
  ResultFuture<AuthUserEntity> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
  ResultFuture<void> signOut();
  ResultFuture<AuthUserEntity> getCurrentUser();
}