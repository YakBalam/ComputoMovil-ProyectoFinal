import 'package:cliente_taller/auth.dart';
import 'package:cliente_taller/Loading.dart';
import 'package:cliente_taller/constants.dart';
import 'package:flutter/material.dart';

class Registrarse extends StatefulWidget {
  final Function toggleView;
  Registrarse({required this.toggleView});

  @override
  _RegistrarseState createState() => _RegistrarseState();
}

//AGregar nombre
class _RegistrarseState extends State<Registrarse> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // Textos obtenidos
  String email = '';
  String nombre = '';
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
              title: Text('Registrarse'),
              actions: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    widget.toggleView();
                  },
                  icon: Icon(Icons.person),
                  label: Text('Sign in'),
                )
              ],
            ),
            body: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
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
                      SizedBox(height: 10.0),
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
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState != null) {
                            if (_formKey.currentState!.validate()) {
                              setState(() => loading = true);
                              dynamic result = await _auth
                                  .registerWithEmailAndPass(email, password);

                              if (result == null) {
                                setState(() {
                                  error =
                                      'Ingresa un correo electrónico válido';
                                  loading = false;
                                });
                              }
                            }
                          }
                        },
                        child: Text('Registrarse'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan[700],
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
