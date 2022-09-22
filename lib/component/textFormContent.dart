import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormContent extends StatefulWidget {
  TextFormContent({
    Key? key,
    required this.changed,
  }) : super(key: key);

  final Function(String)? changed;
  @override
  _TextFormContentState createState() => _TextFormContentState();
}

class _TextFormContentState extends State<TextFormContent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '0',
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: const InputDecoration(
        counterText: '',
        border: InputBorder.none,
      ),
      textAlign: TextAlign.center,
      maxLength: 3,
      showCursor: true,
      cursorColor: Colors.white,
      style: const TextStyle(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
      onChanged: (value) {
        if (value.isNotEmpty) {
          widget.changed!(int.tryParse(value).toString());
        }
      },
    );
  }
}
