import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../manager/saved_bloc/saved_bloc.dart';
import '../widgets/saved_widget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          Modular.get<SavedBloc>()..add(RequestSavedFactsListEvent()),
      child: Scaffold(
        appBar: AppBar(),
        body: const SavedWidget(),
      ),
    );
  }
}
