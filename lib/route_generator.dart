import 'package:flutter/material.dart';
import 'homepage.dart';
import 'resultpage.dart';

class RouteGenerator {
  //check 'onGeneratedRoute' key in main.dart
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        {
          return MaterialPageRoute(builder: (context) => HomePage());
        }
        break;
      case '/result':
        if (args is Map) {
          return MaterialPageRoute(
            builder: (context) => ResultPage(
              resultToShow: args,
            ),
          );
        } else {
          return _errorRoute();
        }
        break;
      default:
        {
          return _errorRoute();
        }
        break;
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Error'),
      ),
    );
  });
}
