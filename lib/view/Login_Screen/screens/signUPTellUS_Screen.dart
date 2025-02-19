import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/Login_Screen/widget/Mybuttons.dart';
import 'package:scout_app/view/Login_Screen/widget/inputDecoration.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  final TextEditingController NameController = TextEditingController();
  final TextEditingController UserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/login/header.png",
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                "Tell us about you",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Let’s create your profile",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40.h,
              ),
              TextFormField(
                controller: NameController,
                decoration: inputDecor(context, "Full Name", null),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                controller: UserNameController,
                decoration: inputDecor(context, "Username*", null),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "*Your username is what your friends will use to find your public profile.",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 150.h,
              ),
              Mybuttons(
                  ontap: () {
                    Navigator.pushNamed(context, RouteName.signUp3);
                  },
                  text: "Next",
                  color: Color(0xFFFB6012),
                  fontColor: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
