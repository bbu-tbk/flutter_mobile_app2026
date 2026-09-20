import 'package:flutter/material.dart';

class InputCustomWidget extends StatelessWidget {
  String? labelText, hintText, errorValidate;
  TextEditingController? controller;

  InputCustomWidget({
    super.key,
    this.labelText,
    this.hintText,
    this.errorValidate,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: labelText ?? '',
        hintText: hintText ?? '',

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
      ),

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return errorValidate ?? '';
        }
        return null;
      },
    );
  }
}
