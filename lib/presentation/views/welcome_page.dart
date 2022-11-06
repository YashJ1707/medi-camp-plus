import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medi_camp_plus/presentation/authentication/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Mediko +",
          style: TextStyle(
              fontFamily: 'PoetsenOne', fontSize: 50.sp, color: Colors.purple),
        ),
        Lottie.asset('asset/lottie/welcome.json'),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            "Welcome to the new era get started with us and enjoy a healthy and happy life",
            style: TextStyle(fontSize: 18.sp),
          ),
        ),
        SizedBox(
          width: 300.w,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 18.sp),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shadowColor: Colors.purple,
                elevation: 8,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 60.w),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r))),
          ),
        )
      ])),
    );
  }
}
