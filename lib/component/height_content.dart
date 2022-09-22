import 'package:flutter/material.dart';
import 'package:basal_metabolism/caluclate_logic.dart';

class HeightContent extends StatefulWidget {
  const HeightContent({
    Key? key,
  }) : super(key: key);

  @override
  _HeightContentState createState() => _HeightContentState();
}

class _HeightContentState extends State<HeightContent> {
  final Logic _logic = Logic();

  double _value = 0;
  double _endValue = 0;

  void _changeSlider(double e) => setState(() {
        _value = e;
        print('change');
      });

  void _endSlider(double e) => setState(() {
        _endValue = e;
        _logic.setHeight(_endValue.toInt());
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Center(
              child: Text("HEIGHT (cm)",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ))),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('${_value.toInt()}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
          Slider(
            value: _value,
            min: 0,
            max: 200,
            activeColor: Colors.white,
            inactiveColor: Colors.blueGrey,
            onChanged: _changeSlider,
            onChangeEnd: _endSlider,
          ),
        ],
      ),
    );
  }
}
