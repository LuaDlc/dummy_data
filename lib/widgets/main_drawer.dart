import 'package:dummy_data/utils/app_routes.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _creatItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.outlineVariant,
            alignment: Alignment
                .bottomCenter, //centraliza oq esta dentro do container, este caso o text
            child: Text(
              'Vamos cozinhar',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _creatItem(
            Icons.restaurant,
            'Refeicoes',
            () => Navigator.of(context).pushNamed('/'),
          ),
          _creatItem(Icons.settings, 'Config',
              () => Navigator.of(context).pushNamed(AppRoutes.settings))
        ],
      ),
    );
  }
}
