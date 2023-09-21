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
        body: Column(
          children: [
            SizedBox(
              //imagem
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Ingredientes',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              width: 300,
              height: 150,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                  itemCount: meal.ingredients
                      .length, //percorre a lista apenas a quantidade de itens da lista
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Theme.of(context).cardColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(meal.ingredients[index]),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
