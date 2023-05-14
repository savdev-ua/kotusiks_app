import 'package:equatable/equatable.dart';
import 'package:kotusiks_app/features/common/data/models/error/response_error.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);
}

class ResponseError extends DataFailure {
  int _errorCode = 0;

  ResponseError(super.message, this._errorCode);

  int getErrorCode() {
    return _errorCode;
  }

  String getErrorMessage() {
    return message;
  }

  @override
  List<Object> get props => [
        message,
        _errorCode,
      ];
}
