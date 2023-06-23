import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key, this.hint, this.onChanged, this.isPass = false});
  final void Function(String)? onChanged;
  final String? hint;
  final bool isPass;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: isPass,
      decoration: InputDecoration(
          hintText: hint, hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}
