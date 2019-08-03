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
