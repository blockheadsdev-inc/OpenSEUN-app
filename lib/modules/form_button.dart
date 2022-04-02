import 'package:flutter/material.dart';

class FormButton extends StatefulWidget {
  final String text;
  const FormButton({Key? key, required this.text}) : super(key: key);

  @override
  State<FormButton> createState() => _FormButtonState();
}

class _FormButtonState extends State<FormButton> {
  Widget _button() {
    return Container(
      width: 200.0,
      height: 57.0,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30)),
        child: Text(widget.text),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _button();
  }
}
