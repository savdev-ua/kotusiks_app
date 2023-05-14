part of 'saved_bloc.dart';

class SavedState extends Equatable {
  final SavedFactsEntity? savedFactsEntity;

  const SavedState({this.savedFactsEntity});

  SavedState copyWith({
    SavedFactsEntity? savedFactsEntity,
  }) {
    return SavedState(
      savedFactsEntity: savedFactsEntity ?? this.savedFactsEntity,
    );
  }

  @override
  List<Object?> get props => [savedFactsEntity];
}
