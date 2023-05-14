part of 'base_bloc.dart';

class BaseState extends Equatable {
  final bool? clientsAccess;
  final bool dataLoading;
  final String? catFact;
  final FactEntity? factEntity;

  const BaseState({
    this.clientsAccess,
    this.dataLoading = false,
    this.catFact,
    this.factEntity,
  });

  String get factText => factEntity?.factText ?? AppErrors.errorLoadingFact;

  String get dateText =>
      factEntity?.generateRandomDate ?? AppErrors.errorLoadingDate;

  BaseState copyWith({
    bool? clientsAccess,
    bool? dataLoading,
    String? catFact,
    FactEntity? factEntity,
  }) {
    return BaseState(
      clientsAccess: clientsAccess ?? this.clientsAccess,
      catFact: catFact ?? this.catFact,
      dataLoading: dataLoading ?? this.dataLoading,
      factEntity: factEntity ?? this.factEntity,
    );
  }

  @override
  List<Object?> get props => [
        clientsAccess,
        catFact,
        dataLoading,
        factEntity,
      ];
}
