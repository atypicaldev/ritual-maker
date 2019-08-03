import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritual/blocs/ritual_model/bloc.dart';
import 'package:ritual/models/ritual_model.dart';
import 'package:ritual/widgets/text_edit_display.dart';

class RitualCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _color = Colors.white;
    final _bloc = BlocProvider.of<RitualModelBloc>(context);

    return BlocBuilder(
        bloc: _bloc,
        builder: (context, RitualModelState state) {
          final RitualModel _model = state.model;
          return SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.height - 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.purple[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _RitualTitle(_model, _color),
                    _RitualList(_model, _color),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class _RitualList extends StatelessWidget {
  final RitualModel _model;
  final Color _color;

  _RitualList(this._model, this._color);

  Widget _buildStepList(BuildContext context, int pos) {
    if (pos < _model.steps.length) {
      final RitualStep step = _model.steps.elementAt(pos);
      return _RitualStepWidget(step: step);
    }
    return _AddRitualStepWidget();
  }

  Widget _buildSeperators(BuildContext context, int pos) {
    return Divider(
      indent: 10,
      color: Colors.blue[200],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _model.steps.length + 1,
      itemBuilder: _buildStepList,
      separatorBuilder: _buildSeperators,
      shrinkWrap: true,
    );
  }
}

class _RitualTitle extends StatelessWidget {
  final RitualModel _model;
  final Color _color;

  _RitualTitle(this._model, this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 6.0,
        ),
        child: Text(
          _model.title,
          style: TextStyle(
            color: _color,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class _RitualStepWidget extends StatelessWidget {
  final RitualStep step;
  final Color color;

  _RitualStepWidget({Key key, this.step, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        step.task,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}

class _AddRitualStepWidget extends StatefulWidget {
  @override
  _AddRitualStepWidgetState createState() => _AddRitualStepWidgetState();
}

class _AddRitualStepWidgetState extends State<_AddRitualStepWidget> {
  bool _showDisplay = false;
  String _taskValue = '';
  String _minutesValue;

  void _submitStep() {
    final bloc = BlocProvider.of<RitualModelBloc>(context);
    final step = RitualStep(
        task: _taskValue, estimatedMinutes: int.tryParse(_minutesValue));
    bloc.dispatch(AddRitualStepEvent(step));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextEditDisplayWidget(
          showDisplay: false,
          decoration: InputDecoration(
            labelText: 'Enter Task',
          ),
          onChanged: (val) {
            _taskValue = val;
          },
          textInputAction: TextInputAction.done,
        ),
        TextEditDisplayWidget(
          showDisplay: false,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Estimated Minutes for Task',
            suffix: Padding(
              padding: EdgeInsets.fromLTRB(12.0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('minutes'),
                  IconButton(
                    icon: Icon(Icons.done),
                    color: Colors.green,
                    onPressed: _submitStep,
                  ),
                ],
              ),
            ),
          ),
          textInputAction: TextInputAction.done,
          onChanged: (val) {
            _minutesValue = val;
          },
          onComplete: _submitStep,
        ),
      ],
    );
  }
}
