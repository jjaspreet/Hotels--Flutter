import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.all(8),
        decoration:  BoxDecoration(
          color:  Colors.white,
          borderRadius:BorderRadius.circular(8),
        ),
        child:  Row(
          children: [
             Icon(icon, color: const Color(0xFFBFC2DF),),
            Gap(AppLayout.getWidthOf(10)),
            Text(
                text,
                style: Styles.textStyle
            )
          ],
        )
    );
  }
}
