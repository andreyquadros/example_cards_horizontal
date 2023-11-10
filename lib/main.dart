import 'package:flutter/material.dart';

import 'custom_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Horizontal Cards Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Horizontal Cards Example'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: CustomCard(title: "Card 1", description: "Este é o primeiro cartão.")),
            Expanded(child: CustomCard(title: "Card 2", description: "Este é o segundo cartão.")),
            Expanded(child: CustomCard(title: "Card 3",  description: "Este é o terceiro cartão.")),
          ],
        ),
      ),

    );
  }
}
