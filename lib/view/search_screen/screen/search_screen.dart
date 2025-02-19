import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view_model/search_screen_provider.dart';

import '../../../widgets/input_decoration.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final searchScreenProvider = context.watch<SearchScreenProvider>();

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 44,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: TextFormField(
              decoration: inputDecoration(
                context,
                hinText: 'Search for friends or events',
                suffixIcon: Icons.search,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only( left: 16.w, right : 16.w, bottom: 20.h),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 7.w,
              mainAxisSpacing: 2.h,
              childAspectRatio:
                  0.8, // Adjust aspect ratio to fit image & text
            ),
            itemCount: searchScreenProvider.eventCategory.length, // Change this based on dynamic data
            itemBuilder: (_, index) {

              final category = searchScreenProvider.eventCategory[index];

             return  GestureDetector(
               onTap: (){
                 debugPrint("\nCategory pressed!\n");
                 Navigator.pushNamed(context, RouteName.categorySubListScreen);
               },
               child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                        BorderRadius.circular(10.r), // Apply rounded corners
                        child: Image.asset(
                          category["imagePath"],
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit
                              .cover, // Ensures the image covers the full container
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10.h),
                        child: Align(
                           alignment: Alignment.bottomCenter,
                            child: Text(
                              category["eventName"],
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                              maxLines: 2,
                              softWrap: true,
                            )),
                      )
                    ],
                  ),
                ),
             );
            }
          ),
        ),
      ),
    );
  }
}
