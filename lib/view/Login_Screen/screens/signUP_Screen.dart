import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/Login_Screen/widget/Mybuttons.dart';
import 'package:scout_app/view/Login_Screen/widget/inputDecoration.dart';

class Signup extends StatefulWidget {
  Signup({
    super.key,
  });

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmEmailController = TextEditingController();
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
                "Let’s begin",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                "Create your login details below",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40.h,
              ),
              TextFormField(
                controller: emailController,
                decoration: inputDecor(context, "Email", null),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                controller: passwordController,
                decoration: inputDecor(
                    context, "Password", Icon(Icons.visibility_off_sharp)),
              ),
              SizedBox(
                height: 16.h,
              ),
              TextFormField(
                controller: confirmEmailController,
                decoration: inputDecor(context, "Confirm Password",
                    Icon(Icons.visibility_off_sharp)),
              ),
              SizedBox(
                height: 150.h,
              ),
              Mybuttons(
                  ontap: () {
                    Navigator.pushNamed(context, RouteName.signUp2);
                  },
                  text: "Create account",
                  color: Color(0xFFFB6012),
                  fontColor: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 24.h,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Color(0xFF000000),
                            ),
                        children: <TextSpan>[
                      TextSpan(
                        text: "sign in",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xFF000000),
                            decoration: TextDecoration.underline),
                      )
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
