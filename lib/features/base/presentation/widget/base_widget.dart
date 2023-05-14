import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/base_bloc/base_bloc.dart';
import 'base_buttons_row.dart';
import 'custom_network_image.dart';

import 'date_text_widget.dart';
import 'fact_text_widget.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BaseBloc, BaseState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              CustomNetworkImage(
                isLoading: state.dataLoading,
              ),
              FactTextWidget(
                  isLoading: state.dataLoading, text: state.factText),
              DateTextWidget(
                isLoading: state.dataLoading,
                dateText: state.dateText,
              ),
              const Spacer(),
              BaseButtonsRaw(
                isLoading: state.dataLoading,
                onPressedAnother: () {
                  BlocProvider.of<BaseBloc>(context).add(RequestFactEvent());
                },
                onPressedSave: () {
                  BlocProvider.of<BaseBloc>(context).add(SaveFactClicked());
                },
              ),
              const Spacer(),
            ],
          );
        });
  }
}
