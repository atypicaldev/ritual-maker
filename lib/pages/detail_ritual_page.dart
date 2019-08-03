import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ritual/blocs/ritual_model/bloc.dart';
import 'package:ritual/blocs/ritual_model/ritual_model_bloc.dart';
import 'package:ritual/models/ritual_model.dart';
import 'package:ritual/widgets/ritual_card.dart';

class DetailRitualPage extends StatefulWidget {
  final RitualModel model;

  static String get title => 'Ritual Detail Page';

  DetailRitualPage(this.model);

  @override
  _DetailRitualPageState createState() => _DetailRitualPageState(model);
}

class _DetailRitualPageState extends State<DetailRitualPage> {
  RitualModel _model;
  _DetailRitualPageState(this._model);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => RitualModelBloc(_model),
      child: Scaffold(
        appBar: AppBar(
          title: Text(DetailRitualPage.title),
        ),
        body: Center(
          child: RitualCard(),
        ),
      ),
    );
  }
}
