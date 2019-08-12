import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _displayNameController;
  TextEditingController _emailController;
  String _email;
  String _displayName;

  @override
  void initState() {
    _displayNameController = TextEditingController();
    _emailController = TextEditingController();
    super.initState();
  }

  void _handleNameChanged(String name) {
    setState(() {
      _displayName = name;
    });
  }

  void _handleEmailChanged(String email) {
    setState(() {
      _email = email;
    });
  }

  void _completeName(String name) {
    setState(() {
      _displayName = name;
    });
  }

  void _completeEmail(String email) {
    setState(() {
      _email = email;
    });
  }

  void _loginUser() {}

  @override
  void dispose() {
    _displayNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _displayNameController,
                onChanged: _handleNameChanged,
                onSubmitted: _completeName,
              ),
              TextField(
                controller: _emailController,
                onChanged: _handleEmailChanged,
                onSubmitted: _completeEmail,
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: _loginUser,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
