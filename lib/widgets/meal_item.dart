// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal? meal;
  const MealItem({
    Key? key,
    required this.meal,
  }) : super(key: key);
  void _selectedMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectedMeal,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    //adiciona a borda na imagem com o border radius
                    borderRadius: const BorderRadius.only(
                        //borda apenas no topo
                        topLeft: Radius.circular(15),
                        topRight: Radius.zero),
                    child: Image.network(
                      meal!.imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    //posiciona o texto na parte inferior do stack/imagem
                    right: 10,
                    bottom: 20,
                    child: Container(
                      width: 300,
                      color: Colors.black38,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Text(
                        meal!.title,
                        style:
                            const TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, //ESPACAMENTO ENTRE AS ROWS/LINHAS
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.schedule),
                        Text('${meal!.duration} min')
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.work),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          meal!.complexityText, //TRAZ O TEXTO DA COMPLEXIDADE
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          meal!.costText, //TRAZ O TEXTO do custo
                        ),
                      ],
                    )
                  ],
                ),
              )
            ], //stack para colocar um texto por cima da imagem/widget por cima do outro
          )),
    );
  }
}
