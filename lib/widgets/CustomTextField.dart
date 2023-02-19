import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../classes/CustomTextFieldData.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.icon, required this.placeholder, this.hiddenTxt});
  final IconData icon;
  final String placeholder;
  final bool? hiddenTxt;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.hiddenTxt ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(CustomTextFieldData.paddind),
        prefixIcon: Icon(widget.icon),
        hintText: widget.placeholder,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(CustomTextFieldData.borderRadius),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
