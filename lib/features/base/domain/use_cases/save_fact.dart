import 'package:dartz/dartz.dart';
import 'package:kotusiks_app/features/common/data/data_sources/local/hive_data_source.dart';

import '../../../common/data/models/hive/saved_fact_model.dart';
import '../../../common/domain/use_cases/use_case.dart';

class SaveFact implements UseCase<bool, SaveFactParams> {
  final HiveDataSource _hiveDataSource;

  SaveFact(
    this._hiveDataSource,
  );

  @override
  Future<Result<bool>> call(SaveFactParams params) async {
    var result = await _hiveDataSource
        .addFact(SavedFactModel(factText: params.text, factDate: params.date));

    return Result(Right(result));
  }
}

class SaveFactParams {
  final String text;
  final String date;

  SaveFactParams({
    required this.text,
    required this.date,
  });
}
