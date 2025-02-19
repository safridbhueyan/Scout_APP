import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/Login_Screen/screens/login_Screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
  //  with SingleTickerProviderStateMixin
{
  @override
  void initState() {
    super.initState();
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacementNamed(context, RouteName.loginScreen);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Image.asset(
          'assets/splash/logo.png',
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
