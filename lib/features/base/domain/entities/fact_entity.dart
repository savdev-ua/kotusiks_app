import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:kotusiks_app/features/base/data/models/fact_model.dart';
import 'dart:math';

import '../../../../core/utils/extensions/time_extension.dart';

class FactEntity extends Equatable {
  final FactModel factModel;

  const FactEntity({
    required this.factModel,
  });

  String get factText => factModel.fact.toString();

  String get generateRandomDate {
    final String defaultLocale = Platform.localeName;
    final random = Random.secure();

    // Define the start and end dates
    final startDate = DateTime(1900);
    final endDate = DateTime.now();

    // Get the difference in days between the start and end dates
    final difference = endDate.difference(startDate).inDays;

    // Generate a random number of days within the range of the difference
    final randomDays = random.nextInt(difference);

    // Add the random number of days to the start date
    final randomDate = startDate.add(Duration(days: randomDays));

    return DateTimeExtension.formatDateYMD(randomDate, defaultLocale);
  }

  @override
  List<Object?> get props => [factModel];
}
