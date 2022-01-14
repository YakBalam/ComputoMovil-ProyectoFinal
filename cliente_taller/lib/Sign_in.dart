import 'package:cliente_taller/auth.dart';
import 'package:cliente_taller/Loading.dart';
import 'package:cliente_taller/constants.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // Textos obtenidos
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.cyan[100],
            appBar: AppBar(
              backgroundColor: Colors.cyan[400],
              elevation: 0.0,
              title: Text('Sign in'),
              actions: <Widget>[
                ElevatedButton.icon(
                  onPressed: () => widget.toggleView(),
                  icon: Icon(Icons.person),
                  label: Text('Registrarse'),
                )
              ],
            ),
            body: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Email'),
                        validator: (val) => val!.isEmpty
                            ? 'Escribe una dirección de correo electrónico'
                            : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Contraseña'),
                        validator: (val) => val!.length < 6
                            ? 'Introduce una contraseña de al menos 6 caracteres'
                            : null,
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState != null) {
                            if (_formKey.currentState!.validate()) {
                              setState(() => loading = true);
                              dynamic result = await _auth
                                  .signInWithEmailAndPass(email, password);
                              if (result == null) {
                                setState(() {
                                  error = 'Usuario no válido';
                                  loading = false;
                                });
                              }
                            }
                          }
                        },
                        child: Text('Sign in'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan[400],
                          onPrimary: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        error,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  ),
                )),
          );
  }
}
