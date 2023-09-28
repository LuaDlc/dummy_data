import 'package:dummy_data/pages/categories_meals_pages.dart';
import 'package:dummy_data/pages/categories_pages.dart';
import 'package:dummy_data/pages/meal_detail_screen.dart';
import 'package:dummy_data/pages/tabs_pages.dart';
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
            const TabsPages(), // a barra / é uma forma de carregar o componente inicial do app
        AppRoutes.categoryMeals: (_) => const CategoriesMealsPages(),
        AppRoutes.mealDetailScreen: (_) => const MealDetailScreen(),
      },
      //TODO: DENTOR DO MATERIAL APP, TEMOS METODOS PARA ROTAS INDEFINIDAS
      // onGenerateRoute: (settings) {
      //   //se a rota passada noa funcionae, retorna para alguma outra rota, neste caso tela principal
      //   if (settings.name == '/alguma-coisa') {
      //     return null;
      //   } else if (settings.name == '/outra-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) {
      //       return const CategoriesPages();
      //     });
      //   }
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (_) {
      //     return const CategoriesPages();
      //   });
      // },
    );
  }
}
