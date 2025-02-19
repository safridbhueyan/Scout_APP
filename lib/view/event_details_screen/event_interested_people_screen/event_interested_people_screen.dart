import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';

class EventInterestedPeopleScreen extends StatelessWidget{
  const EventInterestedPeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interested",
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),),
        leading: Padding(
          padding:  EdgeInsets.only(left : 8.w),
          child: IconButton(
            onPressed: (){Navigator.pop(context);},
            icon : Icon(Icons.arrow_back_ios,
            color: Color(0xff111315),
            ),),
        ),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(24.r),
            child: Consumer<EventDetailsScreenProvider>(
              builder: (_, eventDetailsScreenProvider, child) {
                return ListView.builder(
                  itemCount: eventDetailsScreenProvider.detailsOfEvent?.interestedPeople?.length ?? 0,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (_, index){
                    final name = eventDetailsScreenProvider.detailsOfEvent?.interestedPeople?[index];
                    return Padding(padding: EdgeInsets.only(bottom: 16.h),
                    child: Row(
                      spacing: 16.w,
                      children: [
                        ClipOval(
                          child: Image.asset('assets/images/event/man_face.png',
                          width: 56.w,
                            height: 56.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          spacing: 4.h,
                          children: [
                            Text(name!.replaceAll(" ", "").toLowerCase(),
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),),

                            Text(name.toUpperCase(),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),);
                    }
                );
              }
            ),
          )
      ),
    );
  }
}