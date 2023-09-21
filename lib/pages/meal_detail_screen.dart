import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailScreen extends StatefulWidget {
  const MealDetailScreen({super.key});

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    //para esta tela ter acesso aos detalhes da refeicao
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
        ),
      ),
      body: const Text(
        'Detalhes da refeicao',
      ),
    );
  }
}
