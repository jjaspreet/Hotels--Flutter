import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool isStart;
  final double marginTop;
  const ColumnLayout({Key? key,
  required this.firstText,
  required this.secondText,
  required this.isStart, 
  this.marginTop = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Column(
        crossAxisAlignment: isStart ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(
            firstText,
            style: Styles.headlineStyle3.copyWith(color: Colors.black),
          ),
          const Gap(10),
          Text(
            secondText,
            style: Styles.headlineStyle4,
          )
        ],
      ),
    );
  }
}
