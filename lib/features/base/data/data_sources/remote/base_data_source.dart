import 'package:kotusiks_app/features/base/data/data_sources/remote/base_service.dart';
import 'package:kotusiks_app/features/base/data/models/fact_model.dart';

import '../../../../../core/config/build_environment.dart';

abstract class BaseDataSource {
  Future<FactModel> getFact();
}

class BaseDataSourceImpl implements BaseDataSource {
  final BaseService _baseService;

  BaseDataSourceImpl(this._baseService);

  @override
  Future<FactModel> getFact() async {
    return _baseService.getFact(env.facts);
  }
}
