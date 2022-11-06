import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_camp_plus/constants/text_styles.dart';

InkWell buildCard(BuildContext context) {
  TextStyle style = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);

  return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => TopicsPage(
        //         url: categories[index].imageUrl.toString(),
        //         description: categories[index].description,
        //         index: categories[index].id as int,
        //         categoryName: categories[index].name.toString(),
        //       ),
        //     ));
      },
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 2),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, 0.9],
              colors: [
                Colors.white,
                //  Color(0xff68FFA4)
                Colors.lightBlue
              ],
            ),
          ),
          width: 220.w,
          height: 210.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Camp One",
                      style: TextStyles.cardTitleStyle,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin, size: 14.w),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "Pimpri Chinchwad",
                          style: TextStyles.cardSubtitleStyle,
                        )
                      ],
                    ),
                    Text(
                      "Details",
                      style: TextStyles.cardTitleStyle,
                    ),
                    Text(
                      "18+",
                      style: TextStyles.cardSubtitleStyle,
                    ),
                    Text(
                      "Tooth Checkup",
                      style: TextStyles.cardSubtitleStyle,
                    ),
                    Text(
                      "9AM - 5PM",
                      style: TextStyles.cardSubtitleStyle,
                    ),

                    // Text()
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "27/11/2022",
                      style: TextStyles.cardSubtitleStyle,
                    ),
                    Image.asset(
                      "asset/images/tent.jpeg",
                      height: 20.h,
                      width: 20.w,
                    )
                  ],
                )
              ],
            ),
          )));
}
