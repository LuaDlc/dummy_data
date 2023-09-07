import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category? category;
  const CategoryWidget({super.key, required this.category});

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/categories-meals', arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          _selectCategory(context), //metodo que recebe o proprio contexto
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  colors: [category!.color.withOpacity(0.5), category!.color],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomRight)),
          child: Text(
            category!.title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          )),
    );
  }
}
