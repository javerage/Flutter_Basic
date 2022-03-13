import 'package:flutter/material.dart';

class CustomInputFormFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? helperText;
  final String? labelText;
  final int maxLength;
  final bool obscureText;
  final bool autofocus;
  final TextInputType keyboardType;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String propertyName;
  final Map<String, String> formValues;

  const CustomInputFormFieldWidget({
    Key? key,
    this.hintText,
    this.helperText,
    this.labelText,
    this.maxLength = 50,
    this.obscureText = false,
    this.autofocus = true,
    this.keyboardType = TextInputType.name,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    required this.propertyName,
    required this.formValues,
  }) : super(key: key);

  String? validateName(String? firstName) {
    if (firstName == null) return 'Este campo es requerido';

    if (firstName.isEmpty) return 'Este campo es requerido';

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: formValues[propertyName],
      autofocus: autofocus,
      textCapitalization:
          !obscureText ? TextCapitalization.words : TextCapitalization.none,
      keyboardType: !obscureText ? keyboardType : TextInputType.visiblePassword,
      obscureText: obscureText,
      maxLength: maxLength,
      decoration: InputDecoration(
          hintText: hintText,
          helperText: helperText,
          labelText: labelText,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          icon: icon != null ? Icon(icon) : null),
      validator: (value) => validateName(value),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) => formValues[propertyName] = value,
    );
  }
}
