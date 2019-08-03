import 'package:flutter/material.dart';
import 'package:ritual/models/ritual_model.dart';
import 'package:ritual/pages/detail_ritual_page.dart';

class CreateRitualPage extends StatefulWidget {
  static String get title => 'Create a Ritual';
  @override
  _CreateRitualPageState createState() => _CreateRitualPageState();
}

class _CreateRitualPageState extends State<CreateRitualPage> {
  String _title = '';
  TextEditingController _controller;

  void _addRitual() {
    final RitualModel model = RitualModel.createNewModel(_title);
    print(model);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DetailRitualPage(model),
        ));
  }

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CreateRitualPage.title),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment(.9, -3),
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              child: TextField(
                controller: _controller,
                onChanged: (String val) {
                  _title = val;
                },
              ),
            ),
            FloatingActionButton(
              onPressed: _addRitual,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
