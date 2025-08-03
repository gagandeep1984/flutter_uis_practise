import 'package:flutter/material.dart';

class ButtonWithCallback extends StatefulWidget {
  final String title;
  final VoidCallback callback;

  const ButtonWithCallback(
      {super.key, required this.title, required this.callback});

  @override
  State<ButtonWithCallback> createState() => _ButtonStateWithCallback();
}

class _ButtonStateWithCallback extends State<ButtonWithCallback> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: ElevatedButton(
          onPressed: widget.callback,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.pinkAccent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide.none))),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
