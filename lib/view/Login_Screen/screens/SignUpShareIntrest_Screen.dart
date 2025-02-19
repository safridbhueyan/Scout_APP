import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/Login_Screen/widget/BoxOfCatagory.dart';
import 'package:scout_app/view/Login_Screen/widget/Mybuttons.dart';
import 'package:scout_app/view/Login_Screen/widget/inputDecoration.dart';

class SignUp3 extends StatefulWidget {
  const SignUp3({super.key});

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  final TextEditingController SearchController = TextEditingController();
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
                "Share your interests",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Let’s personalise the events you see. You can update this later in the profile section. ",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                controller: SearchController,
                decoration: inputDecor(context, "Search", Icon(Icons.search)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Wrap(
                spacing: 9,
                runSpacing: 8,
                children: [
                  boxCat(text: "Festival"),
                  boxCat(text: "Food"),
                  boxCat(text: "Wine"),
                  boxCat(text: "Sports"),
                  boxCat(text: "Literature"),
                  boxCat(text: "Concerts"),
                  boxCat(text: "Nightlife"),
                  boxCat(text: "Music"),
                  boxCat(text: "Film"),
                  boxCat(text: "Tech"),
                  boxCat(text: "Art"),
                  boxCat(text: "Fundraising"),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Mybuttons(
                  ontap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '${RouteName.parentsScreen}',
                      (Route<dynamic> route) => false,
                    );
                  },
                  text: "Done",
                  color: Color(0xFFFB6012),
                  fontColor: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 8.h,
              ),
              Mybuttons(
                  ontap: () {},
                  text: "Skip",
                  color: Color.fromARGB(255, 221, 221, 221),
                  fontColor: Color(0xFF000000),
                  fontWeight: FontWeight.w600),
            ],
          ),
        ),
      ),
    );
  }
}
