import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

final _uuid = Uuid();

@immutable
class RitualModel extends Equatable {
  final String title;
  final List<RitualStep> steps;
  final bool complete;
  final String id;

  static RitualModel createNewModel(String title) {
    return RitualModel(id: _uuid.v4(), title: title);
  }

  RitualModel({
    @required this.title,
    this.steps = const [],
    this.complete = false,
    @required this.id,
  }) : super([steps, complete, id]);

  RitualModel _copyWith({complete, steps, title}) {
    return RitualModel(
      title: title ?? this.title,
      steps: steps ?? this.steps,
      complete: complete ?? this.complete,
      id: id,
    );
  }

  RitualModel addStep(RitualStep step) {
    return this._copyWith(
      steps: [...steps, step],
    );
  }

  RitualModel updateStep({
    @required int stepPos,
    String task,
    bool complete,
    int estimatedMinutes,
  }) {
    final newStep = steps.elementAt(stepPos).copyWith(
          task: task,
          complete: complete,
          estimatedMinutes: estimatedMinutes,
        );

    final nextSteps = [
      ...steps.sublist(0, stepPos),
      newStep,
      if (stepPos < steps.length - 1) ...steps.sublist(stepPos + 1),
    ];

    return this._copyWith(
      steps: nextSteps,
      complete: _allStepsComplete(nextSteps),
    );
  }

  bool _allStepsComplete(List<RitualStep> _steps) {
    return _steps.every((_step) {
      return _step.complete;
    });
  }

  @override
  String toString() => "Ritual {id: $id, complete: $complete, steps: $steps}";
}

class RitualStep extends Equatable {
  final bool complete;
  final String task;
  final int estimatedMinutes;

  RitualStep({
    this.complete = false,
    this.task = '',
    this.estimatedMinutes = 1,
  });

  RitualStep copyWith({
    bool complete,
    String task,
    int estimatedMinutes,
  }) {
    return RitualStep(
      complete: complete ?? this.complete,
      task: task ?? this.task,
      estimatedMinutes: estimatedMinutes ?? this.estimatedMinutes,
    );
  }

  @override
  String toString() =>
      "RitualStep { complete: $complete, task: $task, estimatedMinutes: $estimatedMinutes}";
}
