import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.cardChild,
    this.color,
    this.press,
  }) : super(key: key);

  final Widget cardChild;

  //タップした時の処理（無くてもよい）
  final VoidCallback? press;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: cardChild,
      ),
    );
  }
}
