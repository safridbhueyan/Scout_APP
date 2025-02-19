import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/Login_Screen/widget/GlassBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/login/loginpic.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              Center(
                child: Image.asset(
                  "assets/login/primelogo.png",
                  width: 138.w,
                  height: 36.h,
                ),
              ),
              SizedBox(
                height: 250.h,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Glassbox(),
                  //push
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
