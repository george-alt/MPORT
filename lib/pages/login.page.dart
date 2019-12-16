import 'package:flutter/material.dart';
import 'package:mport/pages/home.page.dart';
import 'package:mport/pages/reset-password.page.dart';
import 'package:mport/pages/signup.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 30,
            left: 40,
            right: 40,
          ),
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset("assets/logo.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (email){
                    if(email.isEmpty){
                      return "O campo é obrigatório";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    )
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (senha){
                    if(senha.isEmpty)
                    {
                      return "O campo é obrigatório";
                    }
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    )
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      "Recuperar Senha",
                      textAlign: TextAlign.right,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordPage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3,1],
                      colors: [
                        Color(0xFFF58524),
                        Color(0xFFF92B7F),
                      ]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Entrar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                            ),
                            textAlign: TextAlign.left,

                          ),
                          Container(
                            child: SizedBox(
                              child: Image.asset("assets/port.png"),
                              height: 40,
                              width: 40,
                            ),
                          )
                        ],
                      ),
                      onPressed: () {
                        //if(_formKey.currentState.validate()){
                        if(true){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              )
                            );
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Color(0xFF3C5A99),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Entrar com Facebook",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                            ),
                            textAlign: TextAlign.left,

                          ),
                          Container(
                            child: SizedBox(
                              child: Image.asset("assets/fb-icon.png"),
                              height: 28,
                              width: 28,
                            ),
                          )
                        ],
                      ),
                      onPressed: () => [],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: FlatButton(
                    child: Text(
                      "Cadastre-se",
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );

                    },
                  ),
                  
                )
              ],
            ),
          ),
        )

    );
  }
}