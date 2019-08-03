import 'dart:async';

import 'package:flutter/material.dart';

typedef DisplayFormatter = String Function(String text);
DisplayFormatter _defaultFormatter = (str) {
  return str;
};

class TextEditDisplayWidget extends StatefulWidget {
  final InputDecoration decoration;
  final DisplayFormatter displayFormatter;
  final TextInputAction textInputAction;
  final bool showDisplay;
  final TextInputType keyboardType;
  final VoidCallback onComplete;
  final ValueChanged<String> onChanged;

  TextEditDisplayWidget({
    Key key,
    this.decoration,
    DisplayFormatter displayFormatter,
    this.textInputAction,
    this.showDisplay,
    this.keyboardType,
    this.onComplete,
    this.onChanged,
  })  : displayFormatter = displayFormatter ?? _defaultFormatter,
        super(key: key);

  @override
  _TextEditDisplayState createState() => _TextEditDisplayState();
}

class _TextEditDisplayState extends State<TextEditDisplayWidget> {
  String _textValue = '';
  TextEditingController _textEditingController;
  StreamController<bool> _streamController;

  @override
  void initState() {
    _streamController = StreamController.broadcast();
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _streamController.close();
    super.dispose();
  }

  void _toggleDisplay(bool shouldDisplay) {
    _streamController.sink.add(shouldDisplay);
  }

  Widget _buildDisplay() {
    return GestureDetector(
      onTap: () => _toggleDisplay(false),
      child: Text(
        widget.displayFormatter(_textValue),
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }

  void _handleComplete() {
    if (widget.onComplete != null) {
      widget.onComplete();
    } else {
      _toggleDisplay(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 40),
      child: StreamBuilder<bool>(
        initialData: widget.showDisplay,
        stream: _streamController.stream,
        builder: (context, snapshot) {
          if (snapshot.data) {
            return _buildDisplay();
          }

          return TextField(
            keyboardType: widget.keyboardType,
            controller: _textEditingController,
            decoration: widget.decoration,
            onChanged: (val) {
              _textValue = val;
              widget.onChanged(val);
            },
            onSubmitted: (s) => _handleComplete(),
            onEditingComplete: _handleComplete,
            textInputAction: widget.textInputAction,
          );
        },
      ),
    );
  }
}
