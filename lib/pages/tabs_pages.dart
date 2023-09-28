import 'package:dummy_data/pages/categories_pages.dart';
import 'package:dummy_data/pages/favorite_pages.dart';
import 'package:flutter/material.dart';

class TabsPages extends StatefulWidget {
  const TabsPages({super.key});

  @override
  State<TabsPages> createState() => _TabsPagesState();
}

class _TabsPagesState extends State<TabsPages> {
  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _pages = [
    {
      'title': 'Lista de categorias',
      'screen': const CategoriesPages(),
    },
    {
      'title': 'Meus Favoritos',
      'screen': const FavoritePages(),
    }
  ];

  _selectPage(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 1, define qual aba será o padrao, neste caso 0 ou 1
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedScreenIndex]['screen'].toString()),
        ),
        body: _pages[_selectedScreenIndex]['screen'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.amber,
            currentIndex: _selectedScreenIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category,
                  ),
                  label: 'Categorias'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star_border_outlined,
                  ),
                  label: 'FAvoritos')
            ]),
      ),
    );
  }
}
