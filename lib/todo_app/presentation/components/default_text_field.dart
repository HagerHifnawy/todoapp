
import 'package:flutter/material.dart';

Widget defaultTextField({
  required TextInputType textInputType,
  bool isObscureText = false,
  required TextEditingController controller,
  required String labeltext,
  IconData? prefixIcon,
  suffixIcon,
  String? Function(String?)? onSubmit,
  ValueChanged<String>? onChange,
  var suffixPressed,
  required String? Function(String?)? validator,
  VoidCallback? onTap,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: isObscureText,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: validator,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: labeltext,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffixIcon))
            : null,
        border: OutlineInputBorder(),
      ),
    );