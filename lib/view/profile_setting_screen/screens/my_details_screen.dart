import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/styles.dart';

import '../../../widgets/primary_button.dart';

class MyDetailsScreen extends StatelessWidget {
  const MyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "My Details"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 32.h,),
              TextFormField(
                decoration: textFieldDecoration(context, "Full Name", null)
              ),
              SizedBox(height: 24.h,),
              TextFormField(
                  decoration: textFieldDecoration(context, "Username", null)
              ),
              SizedBox(height: 24.h,),
              TextFormField(
                  decoration: textFieldDecoration(context, "Email Address", null)
              ),
              SizedBox(height: 24.h,),
              TextFormField(
                maxLines: 3,
                  decoration: textFieldDecoration(context, "Bio", null)
              ),
              Spacer(),
              PrimaryButton(text: "Save",
                color: Color(0xFFFB6012),
                textColor: Colors.white,
                borderRadius:4,
              onPressed: (){},
              ),
              SizedBox(height: 16.h,),
              TextButton(onPressed: (){}, child: Text("Cancel",style: Theme.of(context).textTheme.bodyLarge,)),
              SizedBox(height: 16.h,),
            ],
          ),
        ),
      ),
    );
  }
}
