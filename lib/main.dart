import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kotusiks_app/features/app/app_module.dart';
import 'package:kotusiks_app/features/app/app_widget.dart';

import 'core/config/build_environment.dart';
import 'core/constants/routes.dart';
import 'core/constants/urls.dart';
import 'features/common/data/models/hive/saved_fact_model.dart';

void main() async {
  const flavor = BuildFlavor.dev;

  BuildEnvironment.init(
    flavor: flavor,
    imagesBase: Urls.factsBase,
    factsBase: Urls.factsBase,
    facts: Urls.facts,
  );
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(SavedFactModelAdapter());

  initializeDateFormatting();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    Modular.setInitialRoute(ModuleRoutes.base + Routes.launch);

    runApp(
      ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    );
  });
}
