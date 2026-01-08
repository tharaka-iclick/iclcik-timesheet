import 'package:equatable/equatable.dart';

final class Failure extends Equatable {

  const Failure({required this.title, required this.message});

  final String title;
  final String message;

  @override
  List<Object?> get props => [title, message];
}