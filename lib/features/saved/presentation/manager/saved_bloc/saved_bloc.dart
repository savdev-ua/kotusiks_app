import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kotusiks_app/features/saved/domain/entities/saved_facts_entity.dart';
import 'package:kotusiks_app/features/saved/domain/use_cases/get_saved_facts.dart';

import '../../../../../core/constants/texts.dart';
import '../../../../common/domain/use_cases/no_params.dart';

part 'saved_event.dart';

part 'saved_state.dart';

class SavedBloc extends Bloc<SavedEvent, SavedState> {
  final _getFactsList = Modular.get<GetSavedFacts>();

  SavedBloc() : super(const SavedState()) {
    on<SavedEvent>((event, emit) {});

    on<RequestSavedFactsListEvent>((event, emit) async {
      await _getFactsList(NoParams()).then((fact) async {
        await fact.getData().fold((error) {}, (factEntity) async {
          emit(state.copyWith(savedFactsEntity: factEntity));
        });
      });
    });
  }
}
