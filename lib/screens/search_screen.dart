import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_project/utils/app_layout.dart';
import 'package:world_project/utils/ticket_tabs.dart';
import 'package:world_project/widgets/icon_text_widget.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(AppLayout.getHeightOf(40)),
          Text(
            "What are \nyou looking for ?",
            style: Styles.headlineStyle.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeightOf(20)),
          const TicketTabs(firstText: "Airline tickets", secondText: "Hotels"),
          Gap(AppLayout.getWidthOf(20)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeightOf(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeightOf(20)),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xd91130ce),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Find Tickets",
                style: Styles.headlineStyle4.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeightOf(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Styles.headlineStyle2,
              ),
              InkWell(
                onTap: () {
                  print("You are tapped baby");
                },
                child: Text("View All",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor)),
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeightOf(15),
                    vertical: AppLayout.getHeightOf(15)),
                height: AppLayout.getHeightOf(390),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeightOf(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/aeroplane_inside_view.jpeg")),
                      ),
                    ),
                    Gap(AppLayout.getHeightOf(12)),
                    Center(
                      child: Text(
                        "20% discount on the early booking of this flight Don't miss",
                        style: Styles.headlineStyle2,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.all(14),
                    height: AppLayout.getHeightOf(190),
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3ab8b8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Discount for survey",
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Gap(AppLayout.getHeightOf(12)),
                        Center(
                          child: Text(
                            "20% discount on the early booking of this flight Don't miss",
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(15),
                  Container(
                    margin: const EdgeInsets.only(left: 22),
                    padding: const EdgeInsets.all(15),
                    height: AppLayout.getHeightOf(180),
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                      color: const Color(0xFFec6545),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/emoji_1.png", fit: BoxFit.contain)
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
