import 'package:hive/hive.dart';
part 'saved_fact_model.g.dart';

@HiveType(typeId: 0)
class SavedFactModel extends HiveObject {
  @HiveField(0)
  final String factText;

  @HiveField(1)
  final String factDate;

  SavedFactModel({required this.factText, required this.factDate});
}