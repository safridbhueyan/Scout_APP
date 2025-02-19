import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/Login_Screen/screens/SignUpShareIntrest_Screen.dart';
import 'package:scout_app/view/Login_Screen/screens/login_Screen.dart';
import 'package:scout_app/view/Login_Screen/screens/signUP_Screen.dart';
import 'package:scout_app/view/Login_Screen/screens/signUPTellUS_Screen.dart';
import 'package:scout_app/view/event_create_screen/event_create_screen.dart';

import 'package:scout_app/view/event_details_screen/event_details_screen.dart';
import 'package:scout_app/view/home_screen/home_screen.dart';
import 'package:scout_app/view/event_details_screen/event_activity_list_screen/activity_screen.dart';
import 'package:scout_app/view/parentsScreen/parents_Screen.dart';
import 'package:scout_app/view/profile_setting_screen/screens/profile_setting_screen.dart';
import 'package:scout_app/view/search_screen/screen/category_sub_list_screen.dart';
import 'package:scout_app/view_model/parent_screen_provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/account_privacy_screen%20_provider.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';
import 'package:scout_app/view/splash_Screen/Splash_Screen.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/notifications_screen_provider.dart';
import 'package:scout_app/view_model/profile_setting_screens_provider/theme_screen_provider.dart';
import 'package:scout_app/view_model/search_screen_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set device orientation to portrait
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  // Ensure ScreenUtil is ready
  await ScreenUtil.ensureScreenSize();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  static const deviceWidth = 375.0;
  static const deviceHeight = 812.0;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreenProvider>(
          create: (_) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider<EventDetailsScreenProvider>(
          create: (_) => EventDetailsScreenProvider(),
        ),
        ChangeNotifierProvider<AccountPrivacyScreenProvider>(
          create: (_) => AccountPrivacyScreenProvider(),
        ),
        ChangeNotifierProvider<NotificationsScreenProvider>(
          create: (_) => NotificationsScreenProvider(),
        ),
        ChangeNotifierProvider<ThemeScreenProvider>(
          create: (_) => ThemeScreenProvider(),
        ),
        ChangeNotifierProvider<ParentScreenProvider>(
          create: (_) => ParentScreenProvider(),
        ),
        ChangeNotifierProvider<SearchScreenProvider>(
          create: (_) => SearchScreenProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(deviceWidth, deviceHeight),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,

                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                  backgroundColor: Colors.white,
                  selectedItemColor: Color(0xFFE11E1B),

                  unselectedItemColor: Color(0xff111315),
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  // Dark background color
                  type: BottomNavigationBarType.fixed,

                  selectedLabelStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),

                  unselectedLabelStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(
                          0xff111315) // Explicitly set grey for unselected labels
                      ),
                ),

                appBarTheme: AppBarTheme(
                    surfaceTintColor: Colors.transparent,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    titleTextStyle: GoogleFonts.poppins(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),

                //  setting-up textTheme globally according to figma and use screen_util feature for responsiveness
                textTheme: TextTheme(
                  headlineLarge: GoogleFonts.poppins(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  headlineMedium: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  headlineSmall: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  titleLarge: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    //height: 30.h,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  bodyLarge: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    //height: 22.h,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  bodyMedium: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  bodySmall: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  labelLarge: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              routes: {
                // '/': (context) => ActivityScreen(),
                '/': (context) => SplashScreen(),
                RouteName.loginScreen: (context) => LoginScreen(),
                RouteName.signup: (context) => Signup(),
                RouteName.signUp2: (context) => SignUp2(),
                RouteName.signUp3: (context) => SignUp3(),
                RouteName.homeScreen: (context) => HomeScreen(),
                RouteName.eventDetailsScreen: (context) => EventDetailsScreen(),
                RouteName.eventCreateScreen: (context) => EventCreateScreen(),
                RouteName.profileSettingScreen: (context) =>
                    ProfileSettingScreen(),
                RouteName.parentsScreen: (context) => ParentsScreen(),
                RouteName.activityScreen: (context) => ActivityScreen(),
                RouteName.categorySubListScreen: (context) => CategorySubListScreen(),
              });
        },
      ),
    );
  }
}
