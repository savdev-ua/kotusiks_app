import 'package:flutter/material.dart';
import 'package:kotusiks_app/core/utils/extensions/widget_extension.dart';

import '../../../../core/constants/dimensions.dart';
import '../../../../core/constants/urls.dart';
import '../../../common/presentation/widgets/shimmers.dart';

class CustomNetworkImage extends StatelessWidget {
  final bool isLoading;

  const CustomNetworkImage({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: !isLoading,
        replacement: CommonShimmers.imageShimmer(context),
        child: ClipRRect(
          borderRadius:
              const BorderRadius.all(Radius.circular(Radiuses.imageRadius)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Image.network(
              '${Urls.image}?time=${DateTime.now().toIso8601String()}',
              fit: BoxFit.cover,
            ),
          ),
        ).withTopPadding());
  }
}
