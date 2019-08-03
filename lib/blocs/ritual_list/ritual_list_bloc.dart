import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:ritual/models/ritual_model.dart';
import './bloc.dart';

class RitualListBloc extends Bloc<RitualListEvent, RitualListState> {
  final List<RitualModel> models;
  RitualListBloc({this.models = const []}) : super();

  @override
  RitualListState get initialState => InitialRitualListState(models);

  @override
  Stream<RitualListState> mapEventToState(
    RitualListEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
