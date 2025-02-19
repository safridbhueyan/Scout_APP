import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/styles.dart';

import '../../../widgets/primary_button.dart';

class MyInterestScreen extends StatelessWidget {
   MyInterestScreen({super.key});

  List<String> interestTag = ["Festival","Food","Wine","Sports","Literature","Concerts",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  customAppBar(context, "My Interests"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 32.h,),
              TextFormField(
                decoration: textFieldDecoration(context, "Search", ImageIcon(AssetImage("assets/icons/search.png"),size: 24,))
              ),
              SizedBox(height: 20.h,),

              Wrap(
                runSpacing: 8,
                spacing: 8,
                children: [
                  _buildTag("Festival"),
                  _buildTag("Food"),
                  _buildTag("Wine"),
                  _buildTag("Sports"),
                  _buildTag("Literature"),
                  _buildTag("Concerts"),
                  _buildTag("Nightlife"),
                  _buildTag("Music"),
                  _buildTag("Film"),
                  _buildTag("Outdoor"),
                  _buildTag("Tech"),
                  _buildTag("Art"),
                  _buildTag("Fundraising"),
                ],
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
   Widget _buildTag(String label) {
     return Container(
       padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
       decoration: BoxDecoration(
         color: Color(0xffF4F4F4), // Background color
         borderRadius: BorderRadius.circular(4.r),
       ),
       child: Text(
         label,
         style: TextStyle(
           color: Color(0xff000000),
           fontSize: 14.sp,
           fontWeight: FontWeight.w400,
         ),
       ),
     );
}
}
