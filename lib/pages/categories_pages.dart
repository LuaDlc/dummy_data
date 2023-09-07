import 'package:dummy_data/data/dummy_data.dart';
import 'package:dummy_data/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategoriesPages extends StatelessWidget {
  const CategoriesPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vamos Cozinhar')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        reverse: false,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 50,
            mainAxisSpacing: 20),
        children: dummyCategories.map((cat) {
          return CategoryWidget(
            category: cat,
          );
        }).toList(),
      ),
    );
  }
}
