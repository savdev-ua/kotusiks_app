import 'package:dartz/dartz.dart';

import '../../data/models/error/app_error.dart';
import '../../data/models/error/failure.dart';
import '../../data/models/error/response_error.dart';


part 'result.dart';

abstract class UseCase<Entity, Params> {
  Future<Result<Entity>> call(Params params);
}
