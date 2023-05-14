import 'package:equatable/equatable.dart';

class SavedFactModel extends Equatable {
  final String factText;
  final String factDate;

  const SavedFactModel({required this.factText, required this.factDate});

  @override
  List<Object?> get props => [factDate, factText];
}
