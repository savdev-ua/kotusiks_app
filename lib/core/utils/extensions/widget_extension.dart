import 'package:flutter/material.dart';

import '../../constants/dimensions.dart';

extension WidgetWithPadding on Widget {
  Widget withBottomPadding({double? padding}) {
    return Column(
      children: [
        this,
        SizedBox(height: padding ?? Margins.big),
      ],
    );
  }

  Widget withTopPadding({double? padding}) {
    return Column(
      children: [
        SizedBox(height: padding ?? Margins.big),
        this,
      ],
    );
  }
}
