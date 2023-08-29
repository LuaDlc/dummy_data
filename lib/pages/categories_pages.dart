import 'package:flutter/material.dart';

class CategoriesPages extends StatelessWidget {
  const CategoriesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisExtent: 20,
      ),
      children: const [],
    );
  }
}
