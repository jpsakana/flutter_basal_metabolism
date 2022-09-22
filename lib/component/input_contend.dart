import 'package:flutter/material.dart';

class InputContent extends StatelessWidget {
  const InputContent({
    Key? key,
    required this.textFormContent,
  }) : super(key: key);

  final Widget textFormContent;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0), child: textFormContent);
  }
}
