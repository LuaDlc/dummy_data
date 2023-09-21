import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailScreen extends StatefulWidget {
  const MealDetailScreen({super.key});

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

Widget _createSctionTitle(BuildContext context, String title) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    ),
  );
}

Widget _createSctionContainer(Widget child) {
  return Container(
    width: 330,
    height: 150,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10)),
    child: child,
  );
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
        body: SingleChildScrollView(
          child: Column(
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
              _createSctionTitle(context, 'ingredientes'),
              _createSctionContainer(
                ListView.builder(
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
              ),
              _createSctionTitle(context, 'Passos'),
              _createSctionContainer(ListView.builder(
                  itemCount: meal.steps.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('${index + 1}'),
                          ),
                          title: Text(meal.steps[index]),
                        ),
                        const Divider()
                      ],
                    );
                  }))
            ],
          ),
        ));
  }
}
