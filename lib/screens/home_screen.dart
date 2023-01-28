import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_project/screens/single_hotel_view.dart';
import 'package:world_project/screens/ticket_view.dart';
import 'package:world_project/utils/app_styles.dart';
import 'package:world_project/utils/hotel_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headlineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Book Tickets",
                        style: Styles.headlineStyle,
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/ticket.png"))),
                  ),
                ],
              ),
              const Gap(30),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4f6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205)),
                    const Gap(10),
                    Text(
                      "Search",
                      style: Styles.headlineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
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
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  ),
                ],
              )
            ]),
          ),
          const Gap(30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                TicketView(
                  marginRight: 10,
                ),
                TicketView(
                  marginLeft: 10,
                  marginRight: 10,
                ),
                TicketView(
                  marginLeft: 10,
                )
              ],
            ),
          ),
          const Gap(30),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View All",
                    style: Styles.headlineStyle3.copyWith(color: primary),
                  ),
                )
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelImages
                    .map((hotel) => SingleHotelView(hotelImage: hotel))
                    .toList()),
          )
        ],
      ),
    );
  }
}
