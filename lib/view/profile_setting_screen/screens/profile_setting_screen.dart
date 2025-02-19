import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/Login_Screen/screens/signUP_Screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/account_privacy_screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/notifications_screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/theme_screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/update_password_screen.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/screens/my_details_screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/my_interest_screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/social_link_screen.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/custom_info_container.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  customAppBar(context, "Account Settings"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: ListView(
            children: [

              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFFB6012), width: 1.5.w),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/event/event_01.png",
                        width: 56.0.w,
                        height: 56.0.h,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          // Show the icon in case of an error
                          return Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                            size: 56.0.r,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "John Doe",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "@johnnyboi",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF25282A)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF5F0),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/msg.png"),
                      size: 24,
                    ),
                    SizedBox(width: 12.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Share feedback",style: Theme.of(context).textTheme.bodyMedium,),
                        Text("Help us improve your experience!",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400
                        ),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text("Information",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                height: 16.h,
              ),
              CustomInfoContainer(imagePath: "assets/icons/details.png",title: "My Details",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const MyDetailsScreen()));
              },),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/icons/star.png",title: "My Interests",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>  MyInterestScreen()));
              },),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/icons/share.png",title: "Social Links",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const SocialLinkScreen()));
              },),
              SizedBox(height: 24.h,),
              Text("Preferences",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                height: 16.h,
              ),
              CustomInfoContainer(imagePath: "assets/icons/privacy.png",title: "Account Privacy",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>  AccountPrivacyScreen()));
              },),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/icons/notification.png",title: "Notifications",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>  NotificationsScreen()));
              },),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/icons/light_mode.png",title: "Theme",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>  ThemeScreen()));
              },

              ),
              SizedBox(height: 24.h,),
              Text("Security",style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(
                height: 16.h,
              ),
              CustomInfoContainer(imagePath: "assets/icons/password.png",title: "Update Password",onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>  UpdatePasswordScreen()));
              },),
              SizedBox(height: 4.h,),
              CustomInfoContainer(imagePath: "assets/icons/signout.png",title: "Sign Out",onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>  Signup()), (_)=> false);
              },),
              SizedBox(height:16.h,),
            ],
          ),
        ),
      ),
    );
  }
}


