
import 'package:iclick_timesheet/core/typedef/typedef.dart';
import 'package:iclick_timesheet/modules/auth/data/model/auth_user_model.dart';

abstract interface class AuthRemoteDataSource {
  ResultFuture<AuthUserModel> signInWithEmailAndPassword(String email, String password);
  ResultFuture<AuthUserModel> signUpWithEmailAndPassword(String email, String password, String name);
  ResultFuture<void> signOut();
  ResultFuture<AuthUserModel?> getCurrentUser();
}