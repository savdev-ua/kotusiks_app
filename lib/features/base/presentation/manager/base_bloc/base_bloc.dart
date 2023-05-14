import 'dart:async';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kotusiks_app/core/utils/extensions/log_extension.dart';
import 'package:kotusiks_app/features/base/domain/entities/fact_entity.dart';
import 'package:kotusiks_app/features/base/domain/use_cases/get_fact.dart';
import 'package:kotusiks_app/features/base/domain/use_cases/save_fact.dart';
import 'package:kotusiks_app/features/common/domain/use_cases/no_params.dart';

import '../../../../../core/constants/texts.dart';

part 'base_event.dart';

part 'base_state.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  final _getFact = Modular.get<GetFact>();
  final _saveFact = Modular.get<SaveFact>();

  BaseBloc() : super(const BaseState()) {
    on<BaseEvent>((event, emit) {});

    on<SaveFactClicked>((event, emit) async {
      await _saveFact(
              SaveFactParams(text: state.factText, date: state.dateText))
          .then((fact) async {
        await fact.getData().fold((error) {
          logError(error);
        }, (result) async {
          logInfo(result);

          Fluttertoast.showToast(
            msg: '${Texts.savingResult} $result',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
          );
        });
      });
    });

    on<RequestFactEvent>((event, emit) async {
      emit(state.copyWith(dataLoading: true));

      await _getFact(NoParams()).then((fact) async {
        await fact.getData().fold((error) {
          emit(state.copyWith(dataLoading: false));
        }, (factEntity) async {
          logInfo(factEntity.factModel);

          emit(
            state.copyWith(dataLoading: false, factEntity: factEntity),
          );
        });
      });
    });
  }
}
