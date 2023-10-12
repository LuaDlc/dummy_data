import 'package:flutter/material.dart';

import '../models/settings.dart';
import '../widgets/main_drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var settings = Settings();
    //funcao que retorna um switch
    Widget createSwitch(
      String title,
      String subtitle,
      bool value,
      Function(bool) onChanged,
    ) {
      return SwitchListTile.adaptive(
          title: Text(title),
          subtitle: Text(subtitle),
          value: value,
          controlAffinity: ListTileControlAffinity.platform,
          activeColor: Colors.red,
          onChanged:
              onChanged); //adaptative pra definir comportamento diferente dependendo do sitema operacional
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracoes'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configuracoes',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                createSwitch(
                  'sem Glutén',
                  'só exibe refeicoes sem gluten',
                  settings.isLactoseFree,
                  (value) => setState(
                    () => settings.isLactoseFree = value,
                  ),
                ),
                createSwitch(
                  'Vegana',
                  'só exibe refeicoes veganas',
                  settings.isVegan,
                  (value) => setState(
                    () => settings.isVegan = value,
                  ),
                ),
                createSwitch(
                  'Lactose',
                  'só exibe refeicoes sem lactose',
                  settings.isLactoseFree,
                  (value) => setState(
                    () => settings.isLactoseFree = value,
                  ),
                ),
                createSwitch(
                  'Vegetariana',
                  'só exibe refeicoes vegetarianas',
                  settings.isVegetarian,
                  (value) => setState(
                    () => settings.isVegetarian = value,
                  ),
                ),
              ],
            ),
          ), //usamos o listview sem bulder pois nao precisa criar tela, pois sera feito na mao uma lista exata
        ],
      ),
    );
  }
}
