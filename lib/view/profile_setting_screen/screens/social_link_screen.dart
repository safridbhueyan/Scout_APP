import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/view/profile_setting_screen/widgets/social_media_tile.dart';

import '../../../widgets/primary_button.dart';

class SocialLinkScreen extends StatelessWidget {
  const SocialLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Social Links"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 32.h,),
              SocialMediaTile(imagePath: "assets/icons/instagram.png" ,title: "@username",onTap: (){}, ),
              SizedBox(height: 24.h,),
              SocialMediaTile(imagePath: "assets/icons/tiktok.png" ,title: "@username",onTap: (){}, ),
              SizedBox(height: 24.h,),
              SocialMediaTile(imagePath: "assets/icons/x.png" ,title: "@username",onTap: (){}, ),
              SizedBox(height: 24.h,),
              SocialMediaTile(imagePath: "assets/icons/spotify.png" ,title: "@username",onTap: (){}, ),
              SizedBox(height: 24.h,),
              SocialMediaTile(imagePath: "assets/icons/sound_cloud.png" ,title: "@username",onTap: (){}, ),
              SizedBox(height: 24.h,),
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
