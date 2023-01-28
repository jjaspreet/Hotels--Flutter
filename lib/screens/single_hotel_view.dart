import 'package:flutter/material.dart';
import 'package:world_project/utils/app_layout.dart';
import 'package:world_project/utils/app_styles.dart';

class SingleHotelView extends StatelessWidget {
  final String hotelImage;
  const SingleHotelView({Key? key, required this.hotelImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 27, bottom: 10),
      width: size.width*0.6,
      height: 300,
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
          )
        ]
      ),

      child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Styles.primaryColor,
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/$hotelImage"
                    )
                  )
                ),
              ),
            ),
          ),
        ],
      ),
      );
  }
}
