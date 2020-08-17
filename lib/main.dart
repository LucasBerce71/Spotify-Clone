import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              SizedBox(
                height: 150,
              ),
              Image(
                image: NetworkImage(
                  'https://logospng.org/download/spotify/logo-spotify-icon-2048.png',
                ),
                width: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Milhões de músicas à sua escolha.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold, 
                ),
              ),

              Text(
                'Grátis no Spotify',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold, 
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    'INSCREVA-SE GRÁTIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    'ENTRAR COM O FACEBOOK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    'ENTRAR',
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