import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:ritual/models/ritual_model.dart';
import './bloc.dart';

class RitualModelBloc extends Bloc<RitualBlocEvent, RitualModelState> {
  final RitualModel model;

  RitualModelBloc(this.model) : super();

  @override
  RitualModelState get initialState => InitialRitualModelState(model);

  @override
  Stream<RitualModelState> mapEventToState(
    RitualBlocEvent event,
  ) async* {
    if (event is AddRitualStepEvent) {
      yield* _mapAddToState(event);
    } else if (event is ToggleRitualStepEvent) {
      yield* _mapToggleToState(event);
    } else if (event is EditRitualStepEvent) {
      yield* _mapEditToState(event);
    }
  }

  Stream<RitualModelState> _mapAddToState(AddRitualStepEvent event) async* {
    yield UpdatedRitualModelState(model.addStep(event.step));
  }

  Stream<RitualModelState> _mapEditToState(EditRitualStepEvent event) async* {
    yield UpdatedRitualModelState(model.updateStep(
      task: event.task,
      stepPos: event.pos,
      estimatedMinutes: event.estimatedMinutes,
    ));
  }

  Stream<RitualModelState> _mapToggleToState(
    ToggleRitualStepEvent event,
  ) async* {
    yield UpdatedRitualModelState(model.updateStep(
      stepPos: event.pos,
      complete: event.complete,
    ));
  }
}
