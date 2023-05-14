import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kotusiks_app/features/saved/presentation/manager/saved_bloc/saved_bloc.dart';

import '../../core/core_module.dart';
import '../common/data/data_sources/local/hive_data_source.dart';
import 'domain/use_cases/get_saved_facts.dart';
import 'presentation/pages/saved_page.dart';

class SavedModule extends WidgetModule {
  SavedModule({super.key});

  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<Bind> get binds => [
        Bind.factory((repo) => SavedBloc()),
        Bind.lazySingleton((datasource) => HiveDataSourceImpl()),
        Bind.factory((repos) => GetSavedFacts(repos())),
      ];

  @override
  Widget get view => const SavedPage();
}
