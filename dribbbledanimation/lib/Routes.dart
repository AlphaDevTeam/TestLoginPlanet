import 'package:flutter/material.dart';
import 'package:dribbbledanimation/Screens/Login/index.dart';
import 'package:dribbbledanimation/Screens/Menu/index.dart';
import 'package:dribbbledanimation/Screens/CustomerTransaction/index.dart';
import 'package:dribbbledanimation/Screens/Test/index.dart';

class Routes {
  Routes() {
    runApp(new MaterialApp(
      title: "Login Test App",
      debugShowCheckedModeBanner: true,
      home: new LoginScreen(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/login':
            return new MyCustomRoute(
              builder: (_) => new LoginScreen(),
              settings: settings,
            );

          case '/home':
            return new MyCustomRoute(
              builder: (_) => new MenuScreen(),
              settings: settings,
            );

          case '/customerTransaction':
            return new MyCustomRoute(
              builder: (_) => new DropDownScreen(),
              settings: settings,
            );

          case '/customerTransactionSpesific':
            return new MyCustomRoute(
              builder: (_) => new TestScreen("85"),
              settings: settings,
            );
        }
      },
    ));
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return new FadeTransition(opacity: animation, child: child);
  }
}
