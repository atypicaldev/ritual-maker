import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ritual/models/ritual_model.dart';

@immutable
abstract class RitualListEvent extends Equatable {
  RitualListEvent([List props = const []]) : super(props);
}

class AddRitualEvent extends RitualListEvent {
  final RitualModel model;

  AddRitualEvent(this.model) : super([model]);
}

class FetchRitualsEvent extends RitualListEvent {
  final int page;
  final String userId;

  FetchRitualsEvent({this.page = 0, @required this.userId}) : super([page]);
}
