import 'package:logger/logger.dart';

extension ObjectExtension on Object {
  static final Logger _logger = Logger();

  void logError(Object? error, [StackTrace? stackTrace]) {
    _logger.e(error, stackTrace);
  }

  void logVerbose(Object? obj, [StackTrace? stackTrace]) {
    _logger.log(Level.verbose, obj, stackTrace);
  }

  void logInfo(Object? obj, [StackTrace? stackTrace]) {
    _logger.log(Level.info, obj, stackTrace);
  }

  void logWarning(Object? obj, [StackTrace? stackTrace]) {
    _logger.log(Level.warning, obj, stackTrace);
  }
}