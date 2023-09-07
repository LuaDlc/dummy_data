// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dummy_data/data/dummy_data.dart';
import 'package:flutter/material.dart';

import 'package:dummy_data/models/category.dart';

class CategoriesMealsPages extends StatelessWidget {
  const CategoriesMealsPages({
    Key? key,
  }) : super(key: key);

  /* atributo de categories */

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList(); //retorna true ou false, se o item pertence a category

    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (context, index) {
              return Text(categoryMeals[index].title);
            }));
  }
}
