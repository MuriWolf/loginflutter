import 'package:flutter/material.dart';

class CustomRoundedButton extends StatefulWidget {
  const CustomRoundedButton(
      {super.key, required this.title, required this.callback});
  final String title;
  final void Function() callback;

  @override
  State<CustomRoundedButton> createState() => _CustomRoundedButtonState();
}

class _CustomRoundedButtonState extends State<CustomRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
        width: double.infinity,
        // height: 40,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.orange],
              end: Alignment.centerLeft,
              begin: Alignment.centerRight),
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          (widget.title).toUpperCase(),
          style: const TextStyle(
              fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
