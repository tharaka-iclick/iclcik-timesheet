
import 'package:equatable/equatable.dart';

class AuthUserEntity extends Equatable{
  final String id;
  final String email;
  final String name;

  const AuthUserEntity({
    required this.id,
    required this.email,
    required this.name,
  });

  AuthUserEntity copyWith({
    String? id,
    String? email,
    String? name,
  }) {
    return AuthUserEntity(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [id, email, name];
}