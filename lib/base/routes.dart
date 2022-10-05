import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage/home_page.dart';
import 'package:flutter_application_1/pages/homepage/home_page_widget.dart';

import '../pages/description/description.dart';
import '../pages/loginpage/login_page.dart';

class AppRoutes {
  static const login = '/';
  static const description = '/description';
  static const homepage = '/homepage';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    PageArguments? pageArguments;
    if (settings.arguments != null) {
      pageArguments = (settings.arguments as PageArguments);
    }

    var routes = <String, WidgetBuilder>{
      AppRoutes.login: (context) => const LoginPage(),
      AppRoutes.description: (context) => const DescriptionViewWidget(),
      AppRoutes.homepage: (context) => HomePageWidget(),
    };

    WidgetBuilder builder = routes[settings.name] ?? routes.values.first;
    return MaterialPageRoute(builder: (ctx) => builder(ctx));
  }
}

class PageArguments {
  final String? pageTitle;
  final Map<String, dynamic>? data;

  PageArguments({
    this.pageTitle,
    this.data,
  });
}
