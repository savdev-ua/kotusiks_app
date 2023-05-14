part of 'base_bloc.dart';

abstract class BaseEvent {}

class RequestFactEvent extends BaseEvent{}

class NavigateButtonClicked extends BaseEvent {}

class SaveFactClicked extends BaseEvent {}
