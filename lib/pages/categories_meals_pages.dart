// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dummy_data/models/category.dart';

class CategoriesMealsPages extends StatelessWidget {
  const CategoriesMealsPages({
    Key? key,
    this.category,
  }) : super(key: key);

  /* atributo de categories */
  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category!.title),
      ),
      body: Container(
        child: Text('Receitas por categoria ${category!.id}'),
      ),
    );
  }
}
