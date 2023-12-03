import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [
      const Tab(
        icon:Icon(Icons.account_circle),
        text: "Mi cuenta",),
      const Tab(
        icon: Icon(Icons.chat),
        text: "Mensajes",
        ),
      const Tab(
        icon: Icon(Icons.alarm),
        text: "Noitficaciones",
      ),
      const Tab(
        icon: Icon(Icons.settings),
        text: "Configuracion",
      )
    ];

    final contenidoWidgets = TabBarView(
      children: [
        Column(
          children: [
            const CircleAvatar(backgroundColor: Colors.blue),
            Text("Mi cuenta", style: Theme.of(context).textTheme.titleLarge,)
          ],
        ),
        Center(
          child: Text("Mensajes Recientes", style: Theme.of(context).textTheme.headlineLarge),
        ),
        Center(
          child: Text("Notificaciones", style: Theme.of(context).textTheme.headlineLarge),
        ),
        Center(
          child: Text("Configuracion", style: Theme.of(context).textTheme.headlineLarge),
        )
      ]
      );

    return MaterialApp(
      title: 'Material App',
      home: DefaultTabController(
        length: widgets.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Pestañas en Flutter"),
            bottom: TabBar(
              tabs: widgets
            ),
          ),
        body: contenidoWidgets,
        ),
      )
    );
  }
}