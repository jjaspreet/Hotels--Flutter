import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_project/utils/app_layout.dart';
import 'package:world_project/utils/app_styles.dart';
import 'package:world_project/widgets/thick_circular_container.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  final double marginLeft;
  final double marginRight;
  const TicketView({Key? key, this.isColor, this.marginLeft = 20, this.marginRight = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.85,
      height: isColor == null ?190 : 170,
      child: Container(
        margin:  EdgeInsets.only(left: marginLeft, right: marginRight),
        child: Column(
          children: [
            /*
            this container is showing the blue part of the ticket
             */
            Container(
              decoration:  BoxDecoration(
                  color: isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                       ThickCircularContainer(isColor: isColor),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 23,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints boxConstraints) {
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (boxConstraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) =>  SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: isColor == null ? Colors.white: Colors.grey.shade500),
                                              ),
                                            )));
                              },
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.5,
                            child:  Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null ?Colors.white: Color(0xff8accf7),
                            ),
                          )),
                        ],
                      )),
                       ThickCircularContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style:
                            isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  const Gap(5),
                  Row(
                    children: [
                      Text(
                        "New York",
                        style:
                            isColor == null ?Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                      ),
                      const Spacer(),
                      Text(
                        "8H 30M",
                        style:
                        isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4.copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        "London",
                        style:
                        isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4,
                      )
                    ],
                  )
                ],
              ),
            ),
            /*
            this container is showing the orange part of the ticket
             */
            Container(
              color: isColor == null ? Colors.amber: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ?Styles.bgColor: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) =>  SizedBox(
                                        width: 5,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColor == null ?Colors.white: Colors.grey.shade500),
                                        ),
                                      )));
                        },
                      ),
                    ),
                  )),
                   SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ?Styles.bgColor: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration:  BoxDecoration(
                  color: isColor == null ? Colors.amber: Colors.white,
                  borderRadius:  BorderRadius.only(
                      bottomRight: Radius.circular(isColor == null ?21 : 0),
                      bottomLeft: Radius.circular(isColor == null ?21 : 0))),
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 MAY",
                            style: isColor == null ? Styles.headlineStyle3
                                .copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: isColor == null ? Styles.headlineStyle4
                                .copyWith(color: Colors.white): Styles.headlineStyle4,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "08:00 AM",
                            style: isColor == null ? Styles.headlineStyle3
                                .copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black),
                          ),
                          const Gap(5),
                          Text(
                            "Departure Time",
                            style: isColor == null ? Styles.headlineStyle4
                                .copyWith(color: Colors.white): Styles.headlineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style: isColor == null ?Styles.headlineStyle3
                                .copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor == null ? Styles.headlineStyle4
                                .copyWith(color: Colors.white): Styles.headlineStyle4,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
