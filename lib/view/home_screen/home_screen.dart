import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view/home_screen/widgets/event_list.dart';
import 'package:scout_app/view/home_screen/widgets/tab_bar_design.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async  {
      context.read<HomeScreenProvider>().getEvent();
      context.read<HomeScreenProvider>().requestLocationPermission();
    });
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Hello John",
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.w, left: 5.w),
            child: Icon(
              Icons.notifications_outlined,
              size: 24,
              color: Color(0xff111315),
            ),
          )
        ],
        centerTitle: false,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    GestureDetector(
                      onTap: () {
                        debugPrint("\nTab bar pressed\n");
                      },
                      child: TabBarDesign(text: "For You", isSelected: true),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint("\nTab bar pressed\n");
                      },
                      child: TabBarDesign(text: "Friends", isSelected: false),
                    ),
                    GestureDetector(
                      onTap: () {
                        debugPrint("\nTab bar pressed\n");
                      },
                      child: TabBarDesign(text: "Today", isSelected: false),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Consumer<HomeScreenProvider>(
                builder: (_, homeScreenProvider, child) {
                  return EventListBuilder(eventList: homeScreenProvider.eventModel?.eventList ?? []);
                },
              ),
              SizedBox(height: 100,),
            ],
          ),
        ),
      )),
    );
  }
}
