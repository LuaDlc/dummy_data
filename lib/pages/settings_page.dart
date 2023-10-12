import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracoes'),
      ),
      drawer: const MainDrawer(),
      body: Container(
        child: const Text('Configuracoes'),
      ),
    );
  }
}
