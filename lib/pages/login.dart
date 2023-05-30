
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({required Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late String _nombre;
  late String _password;

@override
Widget build(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);

  return Scaffold(
    backgroundColor: Colors.blueGrey[100],
    body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: mediaQuery.size.width * 0.1,
        vertical: mediaQuery.size.height * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 100.0,
            backgroundColor: Colors.transparent,
          ),
          const Text(
            'Login',
            style: TextStyle(
              fontFamily: 'NerkoOne',
              fontSize: 50.0,
            ),
          ),
          SizedBox(
            width: mediaQuery.size.width * 0.4,
            height: 15.0,
            child: Divider(
              color: Colors.blueGrey[600],
            ),
          ),
          TextField(
            enableInteractiveSelection: false,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
              hintText: 'USER-NAME',
              labelText: 'User name',
              suffixIcon: const Icon(Icons.verified_user),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onSubmitted: (valor) {
              _nombre = valor;
              print('El nombre es $_nombre');
            },
          ),
          const Divider(
            height: 18.0,
          ),
          TextField(
            enableInteractiveSelection: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              suffixIcon: const Icon(Icons.lock_outline),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onSubmitted: (valor) {
              _password = valor;
              print('El Password es $_password');
            },
          ),
          const Divider(
            height: 15.0,
          ),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              hoverColor: Colors.lightBlue,
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30.0,
                  fontFamily: 'NerkoOne',
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                print('diste clic');
              },
            ),
          ),
        ],
      ),
    ),
  );
}
}