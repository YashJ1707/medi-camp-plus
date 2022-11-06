import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_camp_plus/constants/text_styles.dart';
import 'package:medi_camp_plus/widgets/category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 0.9],
          colors: [Color(0xffCBFEDE), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome,\nYash",
                style: TextStyles.headingText,
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Booked Camps",
                style: TextStyles.subheadingText,
              ),
              SizedBox(height: 10.h),
              nearbyCardsList(),
              SizedBox(height: 20.h),
              Text(
                "Nearby Camps",
                style: TextStyles.subheadingText,
              ),
              SizedBox(height: 10.h),
              nearbyCardsList(),
            ],
          ),
        )),
      ),
    );
  }

  Container nearbyCardsList() {
    return Container(
      child: Center(
          child: SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(
            width: 10.w,
          ),
          itemBuilder: ((context, index) => buildCard(context)),
          itemCount: 5,
        ),
      )),
    );
  }
}
