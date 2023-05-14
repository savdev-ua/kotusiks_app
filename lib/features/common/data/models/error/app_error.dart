import 'failure.dart';

class AppError extends Failure {
  const AppError(String message) : super(message);

  @override
  List<Object?> get props => [
    message,
  ];
}
