import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/widgets/custom_header.dart';
import '../../../widgets/input_decoration.dart';
import '../../../widgets/primary_button.dart';
class EventActivities extends StatelessWidget {
  const EventActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomHeader(title: "Event activities"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 48.h,
                    child: TextFormField(
                      decoration: inputDecoration(
                        context,
                        hinText: 'Activity name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a description';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child:              SizedBox(
                          height: 48.h,
                          child: TextFormField(
                            decoration: inputDecoration(
                              context,
                              hinText: 'Start time',
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
                      SizedBox(
                        width: 7.w,
                      ),
                      Flexible(
                        child:               SizedBox(
                          height: 48.h,
                          child: TextFormField(
                            decoration: inputDecoration(
                              context,
                              hinText: 'End time',
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
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/delete.png',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Delete",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xffF04438),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffF04438),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: inputDecoration(
                      context,
                      hinText: 'Activity name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child:               SizedBox(
                          height: 48.h,
                          child: TextFormField(
                            decoration: inputDecoration(
                              context,
                              hinText: 'Start time',
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
                      SizedBox(
                        width: 7.w,
                      ),
                      Flexible(
                        child:               SizedBox(
                          height: 48.h,
                          child: TextFormField(
                            decoration: inputDecoration(
                              context,
                              hinText: 'End time',
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
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/delete.png',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Delete",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xffF04438),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffF04438),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 48.h,
                    child: TextFormField(
                      decoration: inputDecoration(
                        context,
                        hinText: 'Activity name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a description';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child:               SizedBox(
                          height: 48.h,
                          child: TextFormField(
                            decoration: inputDecoration(
                              context,
                              hinText: 'Start time',
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
                      SizedBox(
                        width: 7.w,
                      ),
                      Flexible(
                        child:               SizedBox(
                          height: 48.h,
                          child: TextFormField(
                            decoration: inputDecoration(
                              context,
                              hinText: 'End time',
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
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/delete.png',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "Delete",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Color(0xffF04438),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xffF04438),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: PrimaryButton(
                      text: "Update",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
