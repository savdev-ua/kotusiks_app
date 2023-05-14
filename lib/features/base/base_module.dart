import 'package:flutter_modular/flutter_modular.dart';
import 'package:kotusiks_app/features/base/data/data_sources/remote/base_data_source.dart';
import 'package:kotusiks_app/features/base/data/repositories/base_repository_impl.dart';
import 'package:kotusiks_app/features/base/presentation/manager/base_bloc/base_bloc.dart';
import 'package:kotusiks_app/features/base/presentation/pages/base_page.dart';
import 'package:kotusiks_app/features/common/data/data_sources/local/hive_data_source.dart';

import '../../core/constants/routes.dart';
import '../../core/core_module.dart';
import 'data/data_sources/remote/base_service.dart';
import 'domain/use_cases/get_fact.dart';
import 'domain/use_cases/save_fact.dart';

class BaseModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((dio) => BaseService(dio())),
        Bind.lazySingleton((service) => BaseDataSourceImpl(service())),
        Bind.lazySingleton((datasource) => HiveDataSourceImpl()),
        Bind.lazySingleton((datasource) => BaseRepositoryImpl(datasource())),
        Bind.factory((repo) => BaseBloc()),
        Bind.factory((repos) => GetFact(repos())),
        Bind.factory((repos) => SaveFact(repos())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Routes.launch, child: (_, __) => const BasePage()),
      ];
}
