import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter/material.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage() 
      initialRoute: '/',
      routes: getapplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ) { // si la ruta no esta definida en routes pasa por aqui y podemos redirigir o validar
        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage(),
        );
      },
    );
  }
}