import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../model/event_model.dart';
import '../../../utils/route_name.dart';
import '../../../view_model/event_details_Screen_provider.dart';

class EventListBuilder extends StatelessWidget{

  final List<EventList> eventList;

  const EventListBuilder({super.key, required this.eventList});


  Widget categoryContainer({
    required BuildContext context,
    required Color color,
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(2.r)),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: eventList.length,
      itemBuilder: (_, index) {
        final event = eventList[index];
        return Column(
          children: [
            Card(
              color:Colors.white,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(5.r),
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap:(){
                      debugPrint("\nEvent image button pressed.\n");
                      context.read<EventDetailsScreenProvider>().setEventDetails(event);
                      Navigator.pushNamed(context, RouteName.eventDetailsScreen);
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Image.asset(
                        event.imagePath ?? "",
                        width: 359.w,
                        height: 340.h,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      spacing: 4,
                      children: [
                        categoryContainer(
                          context: context,
                          color: Color(0xff1D4FFF).withOpacity(0.2),
                          text: "Nightlife",
                        ),
                        categoryContainer(
                          context: context,
                          color: Color(0xffFB6012).withOpacity(0.2),
                          text: "Music",
                        ),
                        if(event.category!.length > 2)
                          categoryContainer(
                            context: context,
                            color: Color(0xffF4F4F4),
                            text: "+ more",
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      event.eventDate!,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                        color: Color(0xff25282A),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  GestureDetector(
                    onTap : (){
                      debugPrint("\nEvent title pressed\n");
                      context.read<EventDetailsScreenProvider>().setEventDetails(event);
                      Navigator.pushNamed(context, RouteName.eventDetailsScreen);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        event.eventTitle!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Row(
                      crossAxisAlignment : CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 48.w,
                          height: 30.h,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left : 0,
                                child: ClipOval(child: Image.asset('assets/images/event/female.png',
                                  width: 30.w,
                                  height: 30.h,
                                  fit: BoxFit.cover,),),
                              ),
                              Positioned(
                                left : 18,
                                child: ClipOval(child: Image.asset('assets/images/event/male.png',
                                  width: 30.w,
                                  height: 30.h,
                                  fit: BoxFit.cover,),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w,),
                        Expanded(
                          child: Text(
                            "${event.interestedPeople!.length} friends are interested",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Color(0xff25282A),fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Row(
                      //  spacing : 12.w,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap:(){debugPrint("\nI'm interested button pressed\n");},
                            child: Container(
                              //  width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                color: Color(0xffFFF5F0),
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Center(
                                child: Text(
                                  "I'm interested",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.w),
                          child: IconButton(
                            onPressed :(){debugPrint("\nBookmark icon button pressed!\n");},
                            icon : Icon(Icons.bookmark_border_outlined, size: 24,),
                            color: Color(0xff111315),

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
          ],
        );
      },
    );
  }
}