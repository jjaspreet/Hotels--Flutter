import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:barcode_widget/barcode_widget.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_project/utils/app_layout.dart';
import 'package:world_project/utils/app_styles.dart';
import 'package:world_project/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(70),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(AppLayout.getHeightOf(5)),
              Container(
                height: AppLayout.getHeightOf(86),
                width: AppLayout.getWidthOf(86),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeightOf(12)),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/ticket.png"
                    )
                  )
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headlineStyle,
                  ),
                  Text(
                    "New York",
                    style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500
                    ),
                  ),
                  Gap(5),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color(0xfffef4f3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Positioned(
                          left: 19,
                          top: AppLayout.getHeightOf(400),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Styles.textColor, width: 4)
                            ),
                            child: CircleAvatar(
                              maxRadius: 4,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        Gap(5),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                    child: Text(
                    "Edit",
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),
                ),
                  ),
    ],
              )
            ],
          ),
          Gap(30),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeightOf(90),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                  top:-45,
                  child: Container(
                padding: EdgeInsets.all(AppLayout.getHeightOf(30)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xff264cd2))
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor, size: 27,),
                    ),
                    const Gap(10),
                    Column(
                      children: [
                        Text(
                          "You\'ve got a new award",
                          style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headlineStyle3.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9)),
                        )
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
          Gap(30),
          Text(
            "Accumulated Miles",
            style: Styles.headlineStyle2,
          ),
          Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Text(
                  "9875998",
                  style: Styles.headlineStyle.copyWith(fontSize: 45, color: Styles.textColor),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Accured",
                      style: Styles.headlineStyle3,
                    ),
                    Text(
                      "23 May 2021",
                      style: Styles.headlineStyle3,
                    )
                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(firstText: "23042", secondText: "Miles", isStart: true),
                    ColumnLayout(firstText: "Airline CO", secondText: "Received from", isStart: false),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(firstText: "24", secondText: "Miles", isStart: true),
                    ColumnLayout(firstText: "Mc Donalds", secondText: "Received from", isStart: false),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ColumnLayout(firstText: "52 340", secondText: "Miles", isStart: true),
                    ColumnLayout(firstText: "Exuma", secondText: "Received from", isStart: false),
                  ],
                ),
                Gap(30),
                Text(
                  "How to get more miles",
                  style: Styles.headlineStyle3.copyWith(color: Styles.primaryColor),
                )
              ],
            )

          )
        ],
      ),
    );
  }
}


