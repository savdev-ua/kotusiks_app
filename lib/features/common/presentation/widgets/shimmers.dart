import 'package:flutter/material.dart';
import 'package:kotusiks_app/core/utils/extensions/widget_extension.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/dimensions.dart';

class CommonShimmers {
  static Shimmer imageShimmer(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ClipRRect(
          borderRadius:
              const BorderRadius.all(Radius.circular(Radiuses.imageRadius)),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.height * 0.4,
          ).withTopPadding()),
    );
  }

  static Shimmer factShimmer(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.7,
      ).withTopPadding(),
    );
  }

  static Shimmer date(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.4,
      ).withTopPadding(),
    );
  }
}
