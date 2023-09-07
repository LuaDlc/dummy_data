import 'package:flutter/material.dart';

class CategoriesMealsPages extends StatelessWidget {
  const CategoriesMealsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: Container(
        child: const Text('Receitas por categoria'),
      ),
    );
  }
}
