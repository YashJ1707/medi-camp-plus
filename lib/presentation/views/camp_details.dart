import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_camp_plus/constants/backgrounds.dart';
import 'package:medi_camp_plus/constants/text_styles.dart';

class CampDetailsPage extends StatelessWidget {
  const CampDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          height: 80.h,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                offset: Offset(1, 2), color: Colors.black38, blurRadius: 5)
          ]),
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\₹ 0.00",
                    style: TextStyles.subheadingText,
                  ),
                  InkWell(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffD3762E),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 70.0.w, vertical: 10.h),
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  )
                ]),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                imageSlider(context),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 200.w,
                  child: Text(
                    "Blood Donation Camp",
                    style: TextStyles.subheadingText,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "dsflkdskl; fkldsj flsdjf dkslfj dklsfj kl jdslkdfjs kls lskj dsklfj kldjs j dskjs ls jl dklsfj kl jdslkdfjs kls lskj dsklfj kldjs j dskjs ls jl",
                  style: TextStyles.campContent,
                ),
                SizedBox(
                  height: 40.h,
                ),
                locationDetailsRow(),
                SizedBox(
                  height: 20.h,
                ),
                dateAndTimeRow(),
                SizedBox(
                  height: 20.h,
                ),
                getDirectionsButton(),
              ],
            ),
          )),
        ));
  }

  Center getDirectionsButton() {
    return Center(
      child: InkWell(
          child: Container(
              width: 300.w,
              height: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Color.fromARGB(255, 225, 225, 225),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Get Directions",
                    style: TextStyles.subheadingText,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.directions,
                        color: Colors.green,
                        size: 35.w,
                      ))
                ],
              ))),
    );
  }

  Row locationDetailsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        locationDetails(Icons.map_outlined, "24.2 km", "Distance"),
        SizedBox(
          width: 80.w,
        ),
        locationDetails(Icons.location_on_outlined, "Chinchwad", "Location")
      ],
    );
  }

  Row dateAndTimeRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        dateAndTimeDetails("Date", "23/11/22"),
        SizedBox(
          width: 80.w,
        ),
        dateAndTimeDetails("Time", "9AM - 5PM"),
      ],
    );
  }

  Column dateAndTimeDetails(String heading, String text) {
    return Column(
      children: [
        Text(
          heading,
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          text,
          style: TextStyles.subheadingText,
        )
      ],
    );
  }

  Container locationDetails(IconData icon, String text, String heading) {
    return Container(
      child: Row(
        children: [
          Icon(icon, size: 30.w),
          SizedBox(
            width: 5.w,
          ),
          Column(
            children: [
              Text(
                heading,
                textAlign: TextAlign.left,
                style: TextStyles.cardSubtitleStyle,
              ),
              Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyles.cardTitleStyle,
              ),
            ],
          )
        ],
      ),
    );
  }

  Container imageSlider(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      // width: double.infinity,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
              "asset/images/trial.jpg",
              width: 350.w,
              height: 350.w,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: backButton(context),
          )
        ],
      ),
    );
  }

  InkWell backButton(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: Offset(1, 1), color: Colors.black26, blurRadius: 5)
          ], color: Colors.white54, borderRadius: BorderRadius.circular(50.r)),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
    );
  }
}
