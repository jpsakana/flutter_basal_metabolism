import 'package:basal_metabolism/data/caluculate_data.dart';
import 'package:basal_metabolism/component/reusable_card.dart';
import 'package:flutter/material.dart';

import '../component/input_contend.dart';
import '../component/count_contend.dart';
import '../component/textFormContent.dart';
import '../component/title_content.dart';
import '../component/icon_content.dart';
import '../component/height_content.dart';

import 'package:basal_metabolism/constant.dart';
import 'package:basal_metabolism/caluclate_logic.dart';

import 'result_view.dart';

class TopView extends StatefulWidget {
  const TopView({Key? key}) : super(key: key);
  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  final Logic _logic = Logic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //性別選択
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReusableCard(
                        cardChild: const IconContent(
                          iconData: Icons.male,
                          text: 'MAN',
                        ),
                        press: () {
                          _logic.pressGender(true);
                          setState(() {});
                        },
                        color: _logic.getIsMale ? activeColor : inactiveColor),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: const IconContent(
                        iconData: Icons.female,
                        text: 'WOMAN',
                      ),
                      press: () {
                        _logic.pressGender(false);
                        setState(() {});
                      },
                      color: _logic.getIsMale ? inactiveColor : activeColor,
                    ),
                  ),
                ],
              ),

              //身長
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        children: [
                          HeightContent(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //体重と年齢
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        children: [
                          const TitleContent(title: 'WEIGHT (kg)'),
                          InputContent(
                            textFormContent: TextFormContent(
                              changed: (value) {
                                _logic.setWeight(int.parse(value));
                                //setState(() {});
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CountContent(icon: Icons.remove, press: () {}),
                                CountContent(icon: Icons.add, press: () {})
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        children: [
                          const TitleContent(title: 'AGE'),
                          InputContent(textFormContent:
                              TextFormContent(changed: (value) {
                            _logic.setAge(int.parse(value));
                          })),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CountContent(icon: Icons.remove, press: () {}),
                                CountContent(icon: Icons.add, press: () {})
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //計算ボタン
              Container(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        _logic.caluclate();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultView(),
                            ));
                      },
                      child: const Text(
                        'CALUCLATE',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void pressGender(bool isMale) {
    _logic.pressGender(isMale);
  }
}
