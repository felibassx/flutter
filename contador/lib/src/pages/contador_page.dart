import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  // Estilo personalizado
  TextStyle _styleText = new TextStyle(fontSize: 20);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul!'),
        centerTitle: true,
        elevation: 9.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de Clicks', style: _styleText),
            Text('$_conteo', style: _styleText),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()
    );

  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.settings_backup_restore),
          onPressed: () {
            _cambiarValorConteo(0);
          },
        ),
        Expanded(child: SizedBox(),),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            _cambiarValorConteo(-1);
          },
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _cambiarValorConteo(1);
          },
        ),
        SizedBox(width: 5.0),
      ],
    );    
  }

  void _cambiarValorConteo( int valor ) {

    _conteo = _conteo + valor;

    if (valor == 0){
      _conteo = 0;
    }

    setState(() {});

  }

}