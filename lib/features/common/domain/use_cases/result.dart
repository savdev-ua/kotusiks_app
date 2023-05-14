part of 'use_case.dart';




class Result<Data> {
  late Either<AppError, Data> _data;

  Either<AppError, Data> getData() {
    return _data;
  }

  Result(Either<DataFailure, Data> response) {
    response.fold((l) => _data = Left(_handleLeft(l)), (r) => _data = Right(r));
  }

  AppError _handleLeft(DataFailure error) {
    late String message;
    if (error is ResponseError) {
      message = error.getErrorMessage();
    }
    return AppError(message);
  }
}
