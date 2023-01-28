import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_project/utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TicketTabs({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F6FD),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [

            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              width: size.width * .5,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(8))),
              child:  Center(
                child: Text(firstText),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              width: size.width * 0.44,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(8))),
              child:  Center(
                child: Text(
                  secondText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
