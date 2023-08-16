import 'package:bmi_calculator/brain_calculator.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'const.dart';
import 'pages/input_page.dart';

void main() => runApp(const HomePage());

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InputPage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'results',
          builder: (BuildContext context, GoRouterState state) {
            return ResultPage(bmiBrain: state.extra as BmiCalculator);
          },
        ),
      ],
    ),
  ],
);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: kSecondaryColor,
        ),
        primaryColor: kColor,
        scaffoldBackgroundColor: kColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
              displayColor: kTextColor,
            ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: kTextSecondaryTransparentColor,
        ),
      ),
    );
  }
}
