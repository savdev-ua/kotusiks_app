import 'package:flutter/material.dart';
import 'package:kotusiks_app/core/utils/extensions/widget_extension.dart';
import 'package:kotusiks_app/features/common/presentation/widgets/shimmers.dart';

class DateTextWidget extends StatelessWidget {
  final String dateText;
  final bool isLoading;

  const DateTextWidget({
    Key? key,
    required this.isLoading,
    required this.dateText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isLoading,
      replacement: CommonShimmers.date(context),
      child: Text(dateText).withTopPadding(),
    );
  }
}
