import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ritual/models/ritual_model.dart';

@immutable
abstract class RitualListState extends Equatable {
  final List<RitualModel> models;
  RitualListState(this.models, [List props = const []])
      : super([models, ...props]);
}

class InitialRitualListState extends RitualListState {
  final List<RitualModel> models;
  InitialRitualListState(this.models) : super(models);
}
