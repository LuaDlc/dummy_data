import 'package:dummy_data/pages/categories_meals_pages.dart';
import 'package:dummy_data/pages/categories_pages.dart';
import 'package:dummy_data/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamos cozinhar?',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          hintColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),
      //initialRoute: '/', esta é outra forma de carregar o componente inicial
      routes: {
        AppRoutes.home: (ctx) =>
            const CategoriesPages(), // a barra / é uma forma de carregar o componente inicial do app
        AppRoutes.categoryMeals: (_) => const CategoriesMealsPages()
      },
    );
  }
}
