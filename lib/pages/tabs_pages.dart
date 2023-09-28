import 'package:dummy_data/pages/categories_pages.dart';
import 'package:dummy_data/pages/favorite_pages.dart';
import 'package:flutter/material.dart';

class TabsPages extends StatelessWidget {
  const TabsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos cozinhar?'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star_border_outlined),
                text: 'Favoritos',
              )
            ],
          ),
        ),
        body: const TabBarView(
            children: [CategoriesPages(), FavoritePages()]), //2 aba
      ),
    );
  }
}
