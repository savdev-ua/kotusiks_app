import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kotusiks_app/core/utils/extensions/log_extension.dart';
import 'package:kotusiks_app/features/base/data/models/fact_model.dart';

import '../../../common/data/models/error/failure.dart';
import '../../../common/data/models/error/response_error.dart';
import '../data_sources/remote/base_data_source.dart';
import 'base_repository.dart';

class BaseRepositoryImpl implements BaseRepository {
  final BaseDataSource _baseDataSource;

  BaseRepositoryImpl(this._baseDataSource);

  @override
  Future<Either<DataFailure, FactModel>> getFact() async {
    try {
      var response = await _baseDataSource.getFact();

      return Right(response);
    } on DioError catch (e) {
      logError(e.toString());
      return Left(ResponseError(e.message, 0));
    } catch (e) {
      logError(e.toString());
      return Left(ResponseError(e.toString(), 0));
    }
  }
}
