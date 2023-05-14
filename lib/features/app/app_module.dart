import 'package:flutter_modular/flutter_modular.dart';

import '../../core/constants/routes.dart';
import '../base/base_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          ModuleRoutes.base,
          module: BaseModule(),
        ),
      ];
}
