import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qoute1/core/utils/app_string.dart';
import 'package:qoute1/features/favouritecode1/presentation/screens/favorite_code.dart';
import 'package:qoute1/features/random_code/presentation/screens/quote_screen.dart';

class Routes{
  static const String initialRoute='/';
  static const String favouriteCode='/favouriteCode';
}

class AppRoutes{
  static Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const QuoteScreen(),);
      case Routes.favouriteCode:
        return MaterialPageRoute(builder: (context) => const FavouriteCodeScreen(),);
      default:
        return undefineRoute();
    }
  }
  static Route<dynamic> undefineRoute(){
    return MaterialPageRoute(builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppString.noRouteFound),
        ),
      ),);
  }
}


// final routes={
//   Routes.initialRoute:(context)=>const QuoteScreen(),
//   Routes.favouriteCode:(context)=>const FavouriteCodeScreen(),
//
// };
