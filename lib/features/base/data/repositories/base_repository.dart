import 'package:dartz/dartz.dart';
import 'package:kotusiks_app/features/base/data/models/fact_model.dart';

import '../../../common/data/models/error/response_error.dart';

abstract class BaseRepository {
  Future<Either<DataFailure, FactModel>> getFact();
}
