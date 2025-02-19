import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/notifications_screen_provider.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';
import 'package:scout_app/widgets/switch_button.dart';

class NotificationsScreen extends StatelessWidget {
   NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Account Privacy"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0.r),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text("New Followers",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),),
                  Spacer(),
                  Transform.scale(
                    scale: 0.75,
                    child: Consumer<NotificationsScreenProvider>(
                      builder: (context,notificationScreenProvider,child) {
                        return SwitchButton(isSwitchOn: notificationScreenProvider.isNewFollowerSwitchOn, onChange: notificationScreenProvider.toggleNewFollowerSwitch);
                      }
                    ),
                  ),
                  SizedBox(height: 24.h,),

                ],
              ),
              Row(
                children: [
                  Text("New Events",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400
                  ),),
                  Spacer(),
                  Transform.scale(
                    scale: 0.75,
                    child: Consumer<NotificationsScreenProvider>(
                      builder: (context,notificationScreenProvider,child) {
                        return SwitchButton(isSwitchOn: notificationScreenProvider.isNewEventSwitchOn, onChange: notificationScreenProvider.toggleNewEventSwitch);
                      }
                    ),
                  ),
                  SizedBox(height: 24.h,),

                ],
              ),
            ]
          ),
        )
      ),
    );
  }
}
