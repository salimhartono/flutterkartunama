import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Aplikasi Pertama'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                backgroundImage: AssetImage('images/user.png'),
              ),
              columnIcon,
              SizedBox(
                height: 40,
              ),
              Text(
                'Salim Hartono',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    title: Text(
                      'Salimhartono@smpidn.sch.id',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    child: ListTile(
                  title: Text(
                    '081283348611',
                    textAlign: TextAlign.center,
                  ),
                )),
              )
            ],
          ),
        ));
  }

  var columnIcon = Container(
    child: Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          backgroundImage: AssetImage('images/user.png'),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          backgroundImage: AssetImage('images/user.png'),
        ),
      ],
    ),
  );
}
