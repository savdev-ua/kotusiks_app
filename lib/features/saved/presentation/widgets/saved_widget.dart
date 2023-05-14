import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotusiks_app/features/saved/presentation/manager/saved_bloc/saved_bloc.dart';

class SavedWidget extends StatelessWidget {
  const SavedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SavedBloc, SavedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var model = state.savedFactsEntity?.savedFacts[index];
            return ListTile(
              title: Text(model?.factText ?? ''),
              subtitle: Text(model?.factDate ?? ''),
            );
          },
          itemCount: state.savedFactsEntity?.savedFacts.length,
        );
      },
    );
  }
}
