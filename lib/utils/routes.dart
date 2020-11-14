import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_widget_per_day/ui/catalog%20screens/expanded.dart';
import 'package:one_widget_per_day/ui/catalog%20screens/safe_area.dart';
import 'package:one_widget_per_day/ui/catalog_screen.dart';
import 'package:one_widget_per_day/ui/home_screen.dart';

const String HomeScreenRoute = '/';
const String CatalogScreenRoute = '/catalogRoute';
const String SafeAreaScreenRoute = '/safeAreaRoute';
const String ExpandedScreenRoute = '/expandedRoute';

//*Essa variável settings vai receber o valor que vamos passar no navigator lá pra frente, tanto o nome da rota quando os valores que desejamos passar como argumentos, então vamos usar um case para definir qual tela iremos chamar dependendo do valor do settings.name

RouteFactory routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case HomeScreenRoute:
        screen = HomeScreen();
        break;
      case CatalogScreenRoute:
        screen = CatalogScreen();
        break;
      case SafeAreaScreenRoute:
        screen = SafeAreaScreen();
        break;
      case ExpandedScreenRoute:
        screen = ExpandedScreen();
        break;
      default:
        screen = HomeScreen();
        break;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
