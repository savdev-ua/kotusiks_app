import 'package:dartz/dartz.dart';
import 'package:kotusiks_app/features/common/domain/use_cases/no_params.dart';

import '../../../common/data/data_sources/local/hive_data_source.dart';
import '../../../common/domain/use_cases/use_case.dart';
import '../entities/saved_facts_entity.dart';

class GetSavedFacts implements UseCase<SavedFactsEntity, NoParams> {
  final HiveDataSource _hiveDataSource;

  GetSavedFacts(
    this._hiveDataSource,
  );

  @override
  Future<Result<SavedFactsEntity>> call(NoParams params) async {
    var result = await _hiveDataSource.getFacts();

    return Result(Right(SavedFactsEntity(result)));
  }
}
