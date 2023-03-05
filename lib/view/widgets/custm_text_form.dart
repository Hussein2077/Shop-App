import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    Key? key,
    required this.label,
    required this.hint,
    required this.icon,
      required this.obscure, required this.type,
  }) : super(key: key);
  final String label;
  final String hint;
  final Icon icon;
  final bool obscure;
final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      obscureText: obscure,
      decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hint,
          label: Text(label),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.teals)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )),
    );
  }
}
