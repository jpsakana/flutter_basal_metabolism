import 'package:flutter/material.dart';

class CountContent extends StatelessWidget {
  const CountContent({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Icon(
        icon,
        size: 50,
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<CircleBorder>(CircleBorder(
              side: BorderSide(
            color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
          ))),
          backgroundColor: MaterialStateProperty.all(Colors.red)),
    );
  }
}
