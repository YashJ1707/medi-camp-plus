import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:medi_camp_plus/presentation/authentication/sign_in_form.dart';
import 'package:medi_camp_plus/presentation/authentication/sign_up_form.dart';
import 'package:medi_camp_plus/widgets/elevated_button.dart';
import 'package:medi_camp_plus/widgets/social_login_button.dart';
import 'package:medi_camp_plus/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffEAECF3),
        body: SafeArea(
          // child: signUpForm(),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Image.asset("asset/icons/logo.png"),
                  ),
                  SizedBox(height: 10.h),
                  Text("Register",
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold)),
                  SizedBox(height: 60.h),
                  _buildTabs(context),
                  Text(
                    "Or Login using",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20.h),
                  GoogleLoginButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabs(BuildContext context) {
    return Column(
      children: [
        _buildTabTitles(context),
        // SizedBox(height: tfHeight(4.2)),
        _buildTabItems(context),
      ],
    );
  }

  Widget _buildTabTitles(BuildContext context) {
    // Builder to build Tab Title Item
    Widget _tabTitleItemBuilder(String labelText) => Tab(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 12.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 2)),
            child: Text(
              "$labelText",
              // style: rsc.tabTitleTextStyle(context),
            ),
          ),
        );

    return TabBar(
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.black),
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: Colors.black,
      labelColor: Colors.white,
      tabs: [
        _tabTitleItemBuilder(
          "Sign Up",
        ),
        _tabTitleItemBuilder(
          "Sign In",
        ),
      ],
    );
  }

  Widget _buildTabItems(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 380.w),
      child: TabBarView(children: [SignUpForm(), SignInForm()]),
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              color: Color(0xffEAECF3),
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 4),
                    color: Colors.black12.withOpacity(0.1),
                    blurRadius: 8)
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 135.w, vertical: 4.h),
            child: Image.asset(
              "asset/icons/google.png",
            ),
          ),
        ),
      ),
    );
  }
}
