import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatelessWidget {
  const CustomDropDownWidget({
    Key? key,
    required this.languages,
    required this.initialObject,
    required this.propertyName,
    required this.formValues,
    this.autofocus = false,
    this.icon,
    this.helperText,
    this.hintText,
    this.labelText,
    this.isExpanded = false,
  }) : super(key: key);

  final List<String> languages;
  final Map<String, String> initialObject;
  final String propertyName;
  final Map<String, String> formValues;
  final bool autofocus;
  final IconData? icon;
  final String? helperText;
  final String? hintText;
  final String? labelText;
  final bool isExpanded;

  String? validateNullOrEmpty(String? value) {
    if (value == null) return 'Este campo es requerido';

    if (value.isEmpty) return 'Este campo es requerido';

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        //hint: Text('Select one...'),
        decoration: InputDecoration(
          helperText: helperText,
          hintText: hintText,
          labelText: labelText,
        ),
        autofocus: autofocus,
        value:
            formValues[propertyName]!.isEmpty ? null : formValues[propertyName],
        isDense: true,
        isExpanded: isExpanded,
        icon: icon == null ? null : Icon(icon),
        items: languages
            .map((language) => DropdownMenuItem(
                child: Text(language), value: language.toLowerCase()))
            .toList(),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validateNullOrEmpty(value),
        onChanged: (value) => formValues[propertyName] = value ?? 'other');
  }
}
