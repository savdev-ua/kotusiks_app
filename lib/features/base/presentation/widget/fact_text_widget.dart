import 'package:flutter/material.dart';
import 'package:kotusiks_app/core/utils/extensions/widget_extension.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../common/presentation/widgets/shimmers.dart';

class FactTextWidget extends StatelessWidget {
  final bool isLoading;
  final String text;

  const FactTextWidget({Key? key, required this.isLoading, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      replacement: CommonShimmers.factShimmer(context),
      visible: !isLoading,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Margins.big),
        child: Text(
          text,
        ).withTopPadding(),
      ),
    );
  }
}
