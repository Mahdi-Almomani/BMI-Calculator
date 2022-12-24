import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.teal,
  required VoidCallback onPressed,
  required String text,
  bool isUpperCase = true,
}) {
  return Container(
    decoration: BoxDecoration(
        color: background, borderRadius: BorderRadius.circular(20)),
    width: width,
    child: MaterialButton(
      child: Text(
        isUpperCase ? text.toUpperCase() : text,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      onPressed: onPressed,
    ),
  );
}

Widget defaultTextFormField({
  required TextEditingController control,
  required TextInputType type,
  Function? onChange,
  Function? onSubmit,
  Function? validate,
  required String lable,
  required IconData prefix,
  IconData? suffix,
}) {
  return TextFormField(
    controller: control,
    keyboardType: type,
    decoration: InputDecoration(
        prefixIcon: Icon(prefix),
        suffixIcon: Icon(suffix),
        border: OutlineInputBorder(),
        labelText: lable),
    validator: (value) => validate.toString(),
    // to be able to have the value of the field
    onFieldSubmitted: (value) => onSubmit,

    onChanged: (value) => onChange,
  );
}
