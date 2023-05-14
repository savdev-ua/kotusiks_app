import 'package:dartz/dartz.dart';
import 'package:kotusiks_app/features/base/data/repositories/base_repository.dart';

import '../../../common/domain/use_cases/no_params.dart';
import '../../../common/domain/use_cases/use_case.dart';
import '../entities/fact_entity.dart';

class GetFact extends UseCase<FactEntity, NoParams> {
  final BaseRepository _baseRepository;

  GetFact(
    this._baseRepository,
  );

  @override
  Future<Result<FactEntity>> call(NoParams params) async {
    var getFactResponse = await _baseRepository.getFact();

    return await getFactResponse
        .fold((error) => Future.value(Result(Left(error))), (factModel) async {
      return Result(
        Right(
          FactEntity(
            factModel: factModel,
          ),
        ),
      );
    });
  }
}
