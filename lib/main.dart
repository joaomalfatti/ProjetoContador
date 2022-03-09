import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Faculdade',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Projeto - Desenvolvimento de Apps'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterIncr = 0;
  int counterDecr = 0;

  void incrementCount() {
    setState(() {
      counterIncr++;
    });
  }
  void decrementCount() {
    setState(() {
      counterDecr--;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de vezes que você pressiona este botão:',
            ),
            Text(
              '$counterIncr',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Contador Positivo'
            ),
            Text(
              '$counterDecr',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Contador Negativo'
            ),
            RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text('Contador Positivo'),
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                incrementCount();
              },
              
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Text('Contador Negativo'),
              onPressed: (){
                decrementCount();
              },
            ),
          ],
        ),
      ),
    );
  }
}
