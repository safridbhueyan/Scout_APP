import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/theme_screen_provider.dart';
import 'package:scout_app/widgets/custom_app_bar.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Theme"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: 32.h,
              ),
              Consumer<ThemeScreenProvider>(
                builder: (context,themeProvider,child) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: themeProvider.themeTile.length,
                      itemBuilder: (context,index){

                        final isSelected = themeProvider.isThemeSelected == index;

                        return Padding(
                          padding:  EdgeInsets.only(bottom:4.h),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: isSelected ? Color(0xFFFB6012) : Colors.transparent),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            elevation: 0,
                            color: isSelected ? Color(0xFFFFF5F0) : Color(0xFFF4F4F4),
                            child: Builder(
                                builder: (context) {
                                  return ListTile(
                                      onTap: (){
                                        themeProvider.selectTheme(index);
                                      },
                                      leading: ImageIcon(
                                        AssetImage(themeProvider.themeTile[index]['imagePath']),
                                        size: 24.r,
                                      ),
                                      title: Text(
                                        themeProvider.themeTile[index]['title'],
                                        style: Theme.of(context).textTheme.bodyMedium,
                                      ),
                                      trailing: isSelected ?  Icon(
                                        Icons.radio_button_checked_rounded,
                                        color: Color(0xFFFB6012),
                                      )
                                    : Icon(
                                        Icons.radio_button_off,
                                        color: Color(0xFF111315),
                                      ),
                                  );
                                }
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              ),

            ],
          ),
        ),
      ),
    );
  }
}
