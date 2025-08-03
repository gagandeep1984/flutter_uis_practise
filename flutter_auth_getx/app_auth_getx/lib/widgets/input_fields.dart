import 'package:flutter/material.dart';

class InputFieldsWidget extends StatefulWidget {
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String labelText;
  final String errorText;
  final String hintText;

  const InputFieldsWidget({
    super.key,
    required this.isPassword,
    required this.keyboardType,
    required this.textInputAction,
    required this.labelText,
    required this.errorText,
    required this.hintText,
  });

  @override
  State<InputFieldsWidget> createState() => _InputFieldsWidgetState();
}

class _InputFieldsWidgetState extends State<InputFieldsWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        hintText: widget.hintText,
        errorText: widget.errorText,
        labelText: widget.labelText,
        contentPadding: const EdgeInsets.only(bottom: 15),
        fillColor: Colors.white54,
        focusColor: Colors.white60,
        alignLabelWithHint: true,
      ),
    );
  }
}
