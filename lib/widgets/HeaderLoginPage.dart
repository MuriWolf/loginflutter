import 'package:flutter/material.dart';

class HeaderLoginPage extends StatelessWidget {
  const HeaderLoginPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.deepOrange, Colors.orange]),
          // color: Colors.deepOrange,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: [
          Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          const Center(
            child: Icon(Icons.smartphone, size: 100, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
