import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  // Estilo personalizado
  final styleText = new TextStyle(fontSize: 20);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 9.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks', style: styleText),
            Text('$conteo', style: styleText),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
        },        
      ),
    );

  }

}