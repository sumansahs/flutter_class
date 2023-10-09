import 'package:classwork_flutter/view/arithmetic_view.dart';
import 'package:classwork_flutter/view/dashboard_view.dart';
import 'package:classwork_flutter/view/output_view.dart';
import 'package:classwork_flutter/view/random_view.dart';

class AppRoute {
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/random';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      arithmeticRoute: (context) => const AtithmeticView(),
      randomRoute: (context) => const RandomNumberGenerator(),
    };
  }
}
