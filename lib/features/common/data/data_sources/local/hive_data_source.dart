import 'package:hive/hive.dart';
import 'package:kotusiks_app/core/utils/extensions/log_extension.dart';

import '../../models/hive/saved_fact_model.dart';

abstract class HiveDataSource {
  Future<List<SavedFactModel>> getFacts();

  Future<bool> addFact(SavedFactModel fact);
}

class HiveDataSourceImpl implements HiveDataSource {
  final String _boxName = 'factsBox';

  @override
  Future<List<SavedFactModel>> getFacts() async {
    final box = await Hive.openBox<SavedFactModel>(_boxName);
    // Retrieve all facts from the box
    return box.values.toList();
  }

  @override
  Future<bool> addFact(SavedFactModel fact) async {
    final box = await Hive.openBox<SavedFactModel>(_boxName);
    try {
      box.add(fact);
      return true;
    } catch (err) {
      logError(err);
      return false;
    }
  }
}
