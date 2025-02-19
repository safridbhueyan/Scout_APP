import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view/home_screen/widgets/event_list.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';

class CategorySubListScreen extends StatelessWidget {
  const CategorySubListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Music",
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            color: Color(0xff000000),
            fontWeight: FontWeight.w600,
            fontSize: 28.sp,
          ),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios, color: Color(0xff111315),)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Filter Chips Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FilterChipWidget(
                        image:"assets/icons/time.png",
                        label: "All time",
                      ),
                      SizedBox(width: 10.w),
                      FilterChipWidget(
                        image:"assets/icons/category.png",
                        label: "Category (1)",
                      ),
                      SizedBox(width: 10.w),
                      FilterChipWidget(
                        image:"assets/icons/location.png",
                        label: "Cape Town",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                // Other content here...

                EventListBuilder(eventList: context.read<HomeScreenProvider>().eventModel?.eventList ?? [])

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Widget for Filter Chips
class FilterChipWidget extends StatelessWidget {
  final String image;
  final String label;

  const FilterChipWidget({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4), // Background color
        borderRadius: BorderRadius.circular(20.r), // Rounded edges
      ),
      child: Row(
        children: [
         Image.asset(image,height: 15.h,width: 15.w,),
          SizedBox(width: 6.w),
          Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
