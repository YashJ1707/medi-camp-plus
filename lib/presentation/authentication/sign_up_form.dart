import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_camp_plus/widgets/elevated_button.dart';
import 'package:medi_camp_plus/widgets/text_field.dart';

String validatorText = "";

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _emailTextEditingController = TextEditingController();
  final _usernameTextEditingController = TextEditingController();

  final _passwordTextEditingController = TextEditingController();

  final _confirmPasswordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: CustomTextField(
                controller: _emailTextEditingController,
                hintText: "Email Address",
              ),
            ),
            // SizedBox(height: 10.h),
            // Flexible(
            //   flex: 1,
            //   child: CustomTextField(
            //     controller: _usernameTextEditingController,
            //     hintText: "Username",
            //   ),
            // ),
            SizedBox(height: 10.h),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: CustomTextField(
                controller: _passwordTextEditingController,
                hintText: "Password",
                obsecureText: true,
              ),
            ),
            SizedBox(height: 10.h),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: CustomTextField(
                controller: _confirmPasswordTextEditingController,
                hintText: "Confirm Password",
                obsecureText: true,
              ),
            ),
            SizedBox(height: 20.h),
            Flexible(
              child: CustomElevatedButton(
                  child: Text("Register"),
                  onPressed: () async {
                    final email = _emailTextEditingController.text.trim();
                    final username = _usernameTextEditingController.text.trim();
                    final password = _passwordTextEditingController.text.trim();
                    final confirmedPassword =
                        _confirmPasswordTextEditingController.text.trim();
                    if (email.isEmpty ||
                        password.isEmpty ||
                        confirmedPassword.isEmpty ||
                        username.isEmpty) {
                      setValidator("Fields cannot be empty");
                    } else if (!email.contains("@") || !email.contains(".")) {
                      setValidator("Enter valid email");
                    } else if (password.length < 6) {
                      setValidator("Password should be 6 characters long");
                    } else if (password != confirmedPassword) {
                      setValidator('Passwords do not match');
                    } else if (password.length > 25) {
                      setValidator("Password too long");
                    } else if (username
                        .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                    } else {}
                  }),
            ),
            SizedBox(height: 20.h),
            Text(
              validatorText,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> setValidator(String text) async {
    setState(() {
      validatorText = text;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      validatorText = "";
    });
  }
}
