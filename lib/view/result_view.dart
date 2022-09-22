import 'package:flutter/material.dart';
import 'package:basal_metabolism/caluclate_logic.dart';

class ResultView extends StatefulWidget {
  ResultView({Key? key}) : super(key: key);
  @override
  State<ResultView> createState() => _ResultViewState();

  final Logic _logic = Logic();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    var res = widget._logic.getResult().toString();
    return Scaffold(
      body: Center(
        child: Text(res),
      ),
    );
  }
}
