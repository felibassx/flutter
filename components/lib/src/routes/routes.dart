import 'package:flutter/material.dart';

import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';

Map<String, WidgetBuilder> getapplicationRoutes() {
  return <String, WidgetBuilder>{
    //Se definen las rutas para la navegacion entre páginas
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
