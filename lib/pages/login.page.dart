import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 150, right: 20),
        alignment: Alignment.topLeft,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey[700],
                Colors.grey[900],
                Colors.grey[900],
                Colors.grey[900],
                Colors.grey[900],
                Colors.grey[900]
              ]
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                  'E-mail ou nome de usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
              ),
              SizedBox( height: 20 ),
              Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
              ),
              SizedBox( height: 20 ),
              Text(
                'Senha',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox( height: 20 ),
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                ),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox( height: 50 ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: FlatButton(
                  disabledColor: Colors.grey,
                  onPressed: (){},
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox( height: 10 ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'ESQUECI MINHA SENHA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
