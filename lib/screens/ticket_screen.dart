import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_project/screens/ticket_view.dart';
import 'package:world_project/utils/ticket_tabs.dart';
import 'package:world_project/widgets/column_layout.dart';
import 'package:world_project/widgets/layout_builder_dotted_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Gap(AppLayout.getHeightOf(40)),
              Text(
                "Tickets",
                style: Styles.headlineStyle.copyWith(fontSize: 35),
              ),
              Gap(AppLayout.getHeightOf(30)),
              const TicketTabs(firstText: "Upcoming", secondText: "Previous"),
              Gap(AppLayout.getHeightOf(30)),
              const TicketView(isColor: true, marginLeft: 6,marginRight: 6,),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.only(left: 6, right: 6),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            isStart: true),
                        ColumnLayout(
                            firstText: "5221 76546",
                            secondText: "Passport",
                            isStart: false),
                      ],
                    ),
                    const Gap(20),
                    const DottedLayoutBuilderWidget(
                      isColor: true,
                      sections: 15,
                      width: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                            firstText: "866872-9766",
                            secondText: "Number of E Ticket",
                            isStart: true),
                        ColumnLayout(
                            firstText: "B2SG28F2",
                            secondText: "Booking code",
                            isStart: false),
                      ],
                    ),
                    const Gap(20),
                    const DottedLayoutBuilderWidget(
                      isColor: true,
                      sections: 15,
                      width: 5,
                    ),
                    const Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/visa.png",
                                  scale: 12,
                                ),
                                Text(
                                  " **** 2463",
                                  style: Styles.headlineStyle3
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            Text(
                              "Payment Method",
                              style: Styles.headlineStyle4,
                            )
                          ],
                        ),
                        const ColumnLayout(
                          firstText: "\$ 24.99",
                          secondText: "Price",
                          isStart: false,
                          marginTop: 10,
                        ),
                      ],
                    ),
                    const Gap(20),
                    const DottedLayoutBuilderWidget(
                      isColor: true,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(20),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeightOf(14)),
                      child: BarcodeWidget(
                        data: 'http://github.com/jjaspreet',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    )
                  ],
                ),
              ),

              Gap(20),
              const TicketView(marginLeft: 6,marginRight: 6,),
            ],
          ),
          Positioned(
            left: 19,
            top: AppLayout.getHeightOf(400),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 19,
            top: AppLayout.getHeightOf(400),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
