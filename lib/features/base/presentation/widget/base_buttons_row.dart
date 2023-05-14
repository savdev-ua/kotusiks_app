import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotusiks_app/core/utils/extensions/widget_extension.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/constants/texts.dart';

class BaseButtonsRaw extends StatelessWidget {
  final VoidCallback onPressedAnother;
  final VoidCallback onPressedSave;
  final bool isLoading;

  const BaseButtonsRaw({
    Key? key,
    required this.isLoading,
    required this.onPressedAnother,
    required this.onPressedSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: onPressedAnother,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: Margins.big),
            child: Text(Texts.anotherFact),
          ),
        ),
        IconButton(
          icon: const Icon(CupertinoIcons.heart),
          onPressed: onPressedSave,
        ),
      ],
    ).withTopPadding();
  }
}
