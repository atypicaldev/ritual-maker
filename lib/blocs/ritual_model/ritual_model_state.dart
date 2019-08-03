import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ritual/models/ritual_model.dart';

@immutable
abstract class RitualModelState extends Equatable {
  final RitualModel model;
  RitualModelState(this.model, [List props = const []])
      : super([model]..addAll(props));
}

class InitialRitualModelState extends RitualModelState {
  final RitualModel model;

  InitialRitualModelState(this.model) : super(model);

  @override
  String toString() => "InitialRitualModelState {model: $model}";
}

class UpdatedRitualModelState extends RitualModelState {
  final RitualModel model;

  UpdatedRitualModelState(this.model) : super(model);

  @override
  String toString() => "UpdatedRitualModelState {model: $model}";
}
