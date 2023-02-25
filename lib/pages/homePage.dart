import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'customDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeSizedBoxSpacing = const SizedBox(
    height: 16,
  );

  Container homeBox(Color color) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            homeBox(Colors.lightBlue),
            homeSizedBoxSpacing,
            homeBox(Colors.redAccent),
            homeSizedBoxSpacing,
            homeBox(Colors.greenAccent),
            homeSizedBoxSpacing,
            homeBox(Colors.purpleAccent)
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
