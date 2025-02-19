import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/styles.dart';

import '../../../widgets/primary_button.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Update Password"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h,),
              TextFormField(
                decoration: textFieldDecoration(context, "Current password", ImageIcon(AssetImage("assets/icons/visible_off.png",),size: 24.r,))
              ),
              SizedBox(height: 16.h,),
              TextFormField(
                  decoration: textFieldDecoration(context, "New password", ImageIcon(AssetImage("assets/icons/visible_off.png",),size: 24.r,))
              ),
              SizedBox(height: 16.h,),
              TextFormField(
                  decoration: textFieldDecoration(context, "Confirm password", ImageIcon(AssetImage("assets/icons/visible_off.png",),size: 24.r,))
              ),
              SizedBox(height: 24.h,),
              Text("Password Requirements:",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Color(0xFF25282A),
                fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 8.h,),
              ...[
                'Minimum 8 characters',
                'At least 1 uppercase letter',
                'At least 1 lowercase letter',
                'At least 1 number',
                'At least 1 special character (!@#\$%^&*)',
              ].map(
                  (text) => Row(
                    children: [
                      Text('• ',style: Theme.of(context).textTheme.bodyMedium,),
                      Text(text,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF25282A)
                      ),),
                    ],
                  )
              ),
              Spacer(),
              PrimaryButton(text: "Update",
                color: Color(0xFFFB6012),
                textColor: Colors.white,
                borderRadius:4,
              onPressed: (){},
              ),
              SizedBox(height: 16.h,),
              Align(
                  alignment: Alignment.center,
                  child: TextButton(onPressed: (){}, child: Text("Cancel",style: Theme.of(context).textTheme.bodyLarge,))),
              SizedBox(height: 16.h,),
            ],
          ),
        ),
      ),
    );
  }
}
