import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {  

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Diez','Once', 'Doce','Trece','Catorce'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeTemp Title'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> list = new List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
      );

      // list.add(tempWidget);
      // list.add(Divider());
      list..add(tempWidget)
          ..add(Divider());
      
    }

    return list;
  }

  List<Widget> _crearItemsCorta() {

    return opciones.map( ( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Cualquier cosa de $item'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              
            },
          ),
          Divider(),
        ],
      );

    }).toList();

  }

  

}