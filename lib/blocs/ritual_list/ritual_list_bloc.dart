import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:ritual/data/ritual_repository.dart';
import 'package:ritual/models/ritual_model.dart';
import 'package:ritual/proto/models/ritual.pb.dart' as pb;
import './bloc.dart';

class RitualListBloc extends Bloc<RitualListEvent, RitualListState> {
  final List<RitualModel> models;
  final AppRepository repository;

  RitualListBloc({this.models = const [], @required this.repository}) : super();

  @override
  RitualListState get initialState => InitialRitualListState(models);

  @override
  Stream<RitualListState> mapEventToState(
    RitualListEvent event,
  ) async* {
    if (event is AddRitualEvent) {
    } else if (event is FetchRitualsEvent) {
      yield* _mapAddRitualEventToState(event);
    }
  }

  Stream<RitualListState> _mapAddRitualEventToState(
    FetchRitualsEvent event,
  ) async* {
    Stream<List<pb.Ritual>> ritualStream = repository.listRituals(
      userId: event.userId,
      page: event.page,
    );

    ritualStream.map((rituals) {
      rituals.map((ritual) {
        final List<RitualStep> steps =
            ritual.steps.map((pb.RitualStep step) => RitualStep(
                  complete: step.completed,
                  task: step.description,
                  estimatedMinutes: step.estimatedMinutes.toInt(),
                ));

        return RitualModel(id: ritual.id, title: ritual.title, steps: steps);
      });
    });
  }
}
