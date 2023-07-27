import 'package:flutter/material.dart';
import 'package:flutter_than_life/core/control.dart';
import 'package:flutter_than_life/core/ship.dart';
import 'package:flutter_than_life/systems/systems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Ship makeShip() {
    Ship ship = Ship();

    ship.systems.add(Shield());
    ship.systems.add(Engine());
    ship.systems.add(Oxygen());
    ship.systems.add(Medbay());
    ship.systems.add(Weapon());

    return ship;
  }

  @override
  Widget build(BuildContext context) {
    Ship ship = makeShip();

    return Scaffold(body: Control(ship));
  }
}
