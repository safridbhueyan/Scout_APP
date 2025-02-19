import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/Login_Screen/widget/Mybuttons.dart';

class Glassbox extends StatelessWidget {
  const Glassbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //blurr effects
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(8),
                  //gradient stuffsssssssss
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.1),
                    ],
                  )),
            ),
          ),
        ),

        //bhitorer jinishpatti
        Container(
          // width: double.infinity,
          // height: double.infinity,
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
              //    height: 28.h,
                ),
              ),
              //---------------------------------welcome to scout---------------------------------
              Flexible(
                  child: Text(
                "Welcome to Scout",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
              )),
              SizedBox(
                height: 16.h,
              ),
              //-----------------------------------discover text-----------------------------
              Flexible(
                child: Text(
                  "Discover and share the best local events\nwith your friends.",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w400,
                      ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  softWrap: true,
                ),
              ),

              SizedBox(
                height: 16.h,
              ),
              //-----------------------login buttons-------------------------------------------------------
              Flexible(
                child: Mybuttons(
                  ontap: () {},
                  text: " Continue with Google",
                  color: Color(0xFFFFFFFF),
                  fontColor: Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                  img: "assets/login/google.png",
                ),
              ),

              SizedBox(
                height: 16.h,
              ),
              Center(
                  child: Text(
                "or",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w400,
                    ),
              )),
              SizedBox(
                height: 16.h,
              ),

              Flexible(
                child: Mybuttons(
                  ontap: () {
                    Navigator.pushNamed(context, RouteName.signup);
                  },
                  text: "Register",
                  color: Color(0xFFFB6012),
                  fontColor: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 8.h,
              ),
              Flexible(
                child: Mybuttons(
                    ontap: () {},
                    text: "Sign in",
                    color: Color(0xFFFFF5F0),
                    fontColor: Color(0xFF000000),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
