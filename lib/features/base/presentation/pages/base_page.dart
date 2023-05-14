import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../saved/saved_module.dart';
import '../manager/base_bloc/base_bloc.dart';
import '../widget/base_widget.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<BaseBloc>()..add(RequestFactEvent()),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(CupertinoIcons.time),
                  onPressed: () {
                    Modular.to.push(
                      MaterialPageRoute(
                        builder: (context) => SavedModule(),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
        body: const BaseWidget(),
      ),
    );
  }
}
