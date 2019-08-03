import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ritual/models/ritual_model.dart';

@immutable
abstract class RitualBlocEvent extends Equatable {
  RitualBlocEvent([List props = const []]) : super(props);
}

class ToggleRitualStepEvent extends RitualBlocEvent {
  final int pos;
  final bool complete;

  ToggleRitualStepEvent({
    @required this.pos,
    this.complete,
  }) : super([complete, pos]);

  @override
  String toString() => "ToggleRitualStep: {complete: $complete}";
}

class AddRitualStepEvent extends RitualBlocEvent {
  final RitualStep step;

  AddRitualStepEvent(this.step) : super([step]);
}

class EditRitualStepEvent extends RitualBlocEvent {
  final int pos;
  final String task;
  final int estimatedMinutes;

  EditRitualStepEvent({
    @required this.pos,
    this.task,
    this.estimatedMinutes,
  }) : super([
          task,
          estimatedMinutes,
          pos,
        ]);
}
