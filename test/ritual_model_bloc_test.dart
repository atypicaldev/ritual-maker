import 'package:ritual/blocs/ritual_model/bloc.dart';
import 'package:ritual/models/ritual_model.dart';
import 'package:test/test.dart';

RitualModel _makeSteps(RitualModel model, int numSteps) {
  RitualModel nextModel = model;
  for (int i = 0; i < numSteps; i++) {
    nextModel = nextModel.addStep(RitualStep(
      estimatedMinutes: i,
      task: 'Task: #$i.',
    ));
  }

  return nextModel;
}

void main() {
  group('RitualModelBloc', () {
    RitualModelBloc ritualModelBloc;
    const String ID = 'asldkf938';
    const String TITLE = 'Ritual Title';

    setUp(() {
      ritualModelBloc = RitualModelBloc(RitualModel(
        id: ID,
        title: TITLE,
      ));
    });

    test('initialState matches provided model', () {
      expect(
        ritualModelBloc.initialState,
        InitialRitualModelState(RitualModel(
          id: ID,
          title: TITLE,
        )),
      );
    });

    test('AddRitualStep updates model correctly', () {
      final initModel = RitualModel(
        id: ID,
        title: TITLE,
      );
      List<RitualModelState> expected = [
        InitialRitualModelState(initModel),
        UpdatedRitualModelState(initModel.addStep(RitualStep(
          estimatedMinutes: 3,
          task: 'Hello',
        ))),
      ];
      expectLater(
        ritualModelBloc.state,
        emitsInOrder(expected),
      );

      ritualModelBloc.dispatch(AddRitualStepEvent(RitualStep(
        estimatedMinutes: 3,
        task: 'Hello',
      )));
    });

    group('Events That Modify Steps', () {
      RitualModel initModel;

      setUp(() {
        initModel = _makeSteps(RitualModel(id: ID, title: TITLE), 3);
        ritualModelBloc = RitualModelBloc(initModel);
      });

      test('ToggleStepEvent emits correct states', () {
        final List<RitualModelState> expected = [
          InitialRitualModelState(initModel),
          UpdatedRitualModelState(initModel.updateStep(
            stepPos: 1,
            complete: true,
          )),
        ];

        expectLater(
          ritualModelBloc.state,
          emitsInOrder(expected),
        );
        ritualModelBloc.dispatch(ToggleRitualStepEvent(
          pos: 1,
          complete: true,
        ));
      });

      test('EditStepEvent emits correct states', () {
        const String TASK = 'Updated Task';
        const int NEXT_MIN = 78;
        List<RitualModelState> expected = [
          InitialRitualModelState(initModel),
          UpdatedRitualModelState(initModel.updateStep(
            stepPos: 1,
            task: TASK,
            estimatedMinutes: NEXT_MIN,
          ))
        ];

        expectLater(
          ritualModelBloc.state,
          emitsInOrder(expected),
        );

        ritualModelBloc.dispatch(EditRitualStepEvent(
          pos: 1,
          task: TASK,
          estimatedMinutes: NEXT_MIN,
        ));
      });
    });
  });
}
