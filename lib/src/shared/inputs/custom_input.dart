import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  final InputDecoration decoration;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? lisTextInputFormatter;
  final String? Function(String?)? validator;
  final VoidCallback? onPressed;
  final Function(dynamic)? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autoFocus;

  const CustomInput(
      {super.key,
      required this.decoration,
      this.textInputType,
      this.lisTextInputFormatter,
      this.validator,
      this.onPressed,
      this.onChanged,
      this.onFieldSubmitted,
      this.controller,
      this.focusNode,
      this.autoFocus});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      inputFormatters: lisTextInputFormatter ?? [],
      decoration: decoration,
      autofocus: autoFocus ?? false,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
        // onPressed!();
      },
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
    );
  }
}
