import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/utils/route_name.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';

import 'event_interested_people_screen/event_interested_people_screen.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

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
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        title: Text(
          "Event Details",
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("\nBook mark button pressed.\n");
              },
              icon: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.black,
              )),
          // SizedBox(width: 5.w,),
          GestureDetector(
            onTap: () {
              debugPrint("\nShare button pressed.\n");
            },
            child: Image.asset(
              "assets/icons/share.png",
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Consumer<EventDetailsScreenProvider>(
                    builder: (_, eventDetailsScreenProvider, child) {
                  final event = eventDetailsScreenProvider.detailsOfEvent;
                  return Image.asset(
                    event?.imagePath ?? "",
                    width: 359.w,
                    height: 340.h,
                    // fit: BoxFit.cover,
                  );
                }),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Consumer<EventDetailsScreenProvider>(
                      builder: (_, eventDetailsScreenProvider, child) {
                    return Text(
                      eventDetailsScreenProvider.detailsOfEvent!.eventTitle!,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 20.sp,
                          ),
                    );
                  }),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Consumer<EventDetailsScreenProvider>(
                      builder: (_, eventDetailsScreenProvider, child) {
                    return RichText(
                      text: TextSpan(
                          text: "Organised by ",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Color(0xff25282A),
                                    fontWeight: FontWeight.w400,
                                  ),
                          children: [
                            TextSpan(
                              text: eventDetailsScreenProvider
                                  .detailsOfEvent?.organisedBy,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Color(0xff25282A),
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff25282A),
                                  ),
                            ),
                          ]),
                    );
                  }),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Text(
                    "Event Details",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Row(
                    spacing: 8.w,
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 16,
                        color: Color(0xff111315),
                      ),
                      Expanded(
                        child: Consumer<EventDetailsScreenProvider>(
                          builder: (_, eventDetailsScreenProvider, child) {
                            return Text(
                              eventDetailsScreenProvider
                                  .detailsOfEvent!.eventDate!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Color(0xff111315),
                                      fontWeight: FontWeight.w100),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Row(
                    spacing: 8.w,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Color(0xff111315),
                      ),
                      Expanded(
                        child: Consumer<EventDetailsScreenProvider>(
                          builder: (_, eventDetailsScreenProvider, child) {
                            return Text(
                              eventDetailsScreenProvider
                                  .detailsOfEvent!.location!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Color(0xff111315),
                                  ),
                              maxLines: 2,
                              softWrap: true,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Text(
                    "Description",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Consumer<EventDetailsScreenProvider>(
                    builder: (_, eventDetailsScreenProvider, child) {
                      return Text(
                        eventDetailsScreenProvider.detailsOfEvent!.description!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff25282A),
                            fontWeight: FontWeight.w100),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Activities",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Consumer<EventDetailsScreenProvider>(builder:
                                (_, eventDetailsScreenProvider, child) {
                              return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: eventDetailsScreenProvider
                                    .detailsOfEvent?.activities!.length,
                                itemBuilder: (context, index) {
                                  final artistName = eventDetailsScreenProvider
                                      .detailsOfEvent
                                      ?.activities![index]
                                      .artistName;
                                  return Text(
                                    artistName!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Color(0xff25282A),
                                          fontWeight: FontWeight.w100,
                                        ),
                                  );
                                },
                              );
                            })
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                debugPrint("\nSee all pressed!\n");
                                Navigator.pushNamed(
                                    context, RouteName.activityScreen);
                              },
                              child: Text(
                                "See all",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.black,
                                    ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Consumer<EventDetailsScreenProvider>(builder:
                                (_, eventDetailsScreenProvider, child) {
                              return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: eventDetailsScreenProvider
                                    .detailsOfEvent?.activities!.length,
                                itemBuilder: (context, index) {
                                  final time = eventDetailsScreenProvider
                                      .detailsOfEvent?.activities![index].times;
                                  return Text(
                                    time!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: Color(0xff25282A),
                                          fontWeight: FontWeight.w100,
                                        ),
                                    textAlign: TextAlign.right,
                                  );
                                },
                              );
                            })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Text(
                    "Additional information",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Text(
                    "18 and Over",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w100,
                          color: Color(0xff25282A),
                        ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Text(
                    "ID Required",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w100,
                          color: Color(0xff25282A),
                        ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Text(
                    "No outside alcohol allowed",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w100,
                          color: Color(0xff25282A),
                        ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, right: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Interested",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint("\nSee all button pressed");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  EventInterestedPeopleScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w100,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                  ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Consumer<EventDetailsScreenProvider>(
                      builder: (_, eventDetailsScreenProvider, child) {
                    return Row(
                      children: [
                        ...eventDetailsScreenProvider
                            .detailsOfEvent!.interestedPeople!
                            .map((interestedPeople) {
                          return Container(
                            width: 57.w,
                            margin: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Column(
                              spacing: 8.h,
                              children: [
                                Image.asset(
                                  'assets/icons/false_image.png',
                                  width: 40.w,
                                  height: 40.h,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  interestedPeople,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.w100,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                )
                              ],
                            ),
                          );
                        }).toList()
                      ],
                    );
                  }),
                ),
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("\nI'm interested button pressed\n");
                    },
                    child: Container(
                      //  width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xffFB6012),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Text(
                          "I'm interested",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("\nGet tickets button pressed\n");
                    },
                    child: Container(
                      //  width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Text(
                          "Get tickets",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                    fontSize: 16.sp,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
