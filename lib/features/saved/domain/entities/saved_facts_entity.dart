import 'package:equatable/equatable.dart';

import '../../../common/data/models/hive/saved_fact_model.dart';

class SavedFactsEntity extends Equatable {
  final List<SavedFactModel> savedFacts;

  const SavedFactsEntity(this.savedFacts);

  @override
  List<Object?> get props => [savedFacts];
}
