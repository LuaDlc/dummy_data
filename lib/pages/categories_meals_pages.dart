// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Text('Receitas por categoria ${category.id}'),
    );
  }
}
