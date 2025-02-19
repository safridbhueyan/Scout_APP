import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scout_app/view/event_create_screen/widget/age_restrictions.dart';
import 'package:scout_app/view/event_create_screen/widget/event_activities.dart';
import 'package:scout_app/view/event_create_screen/widget/event_extras_screen.dart';
import 'package:scout_app/view/event_create_screen/widget/event_tags_widget.dart';
import 'package:scout_app/view/event_create_screen/widget/event_visibility_screen.dart';
import '../../widgets/custom_dotted_border_input_field.dart';
import '../../widgets/event_info_container.dart';
import '../../widgets/input_decoration.dart';
import '../../widgets/primary_button.dart';

class EventCreateScreen extends StatelessWidget {
  const EventCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Event information",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Color(0xff000000),
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              fontStyle: FontStyle.normal),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              CustomDottedBorderInputField(
                imagePath: 'assets/icons/file_upload.png',
                label: 'Event artwork (optional)',
                onTap: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    hinText: 'Event name',
                  ),
                  obscureText: true, // Useful for password fields
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    hinText: 'Event date',
                  ),
                  obscureText: true, // Useful for password fields
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Event date';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextFormField(
                  decoration: inputDecoration(
                    context,
                    hinText: 'End date (optional)',
                  ),
                  obscureText: true, // Useful for password fields
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Event date';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Flexible(
                      child:                       SizedBox(
                        height: 48.h,
                        child: TextFormField(
                          decoration: inputDecoration(
                            context,
                            hinText: 'Start time',
                          ),
                          obscureText: true, // Useful for password fields
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Event date';
                            }
                            return null;
                          },
                        ),
                      ),),
                  SizedBox(
                    width: 9.w,
                  ),
                  Flexible(
                      child:                        SizedBox(
                        height: 48.h,
                        child: TextFormField(
                          decoration: inputDecoration(
                            context,
                            hinText: 'End time',
                          ),
                          obscureText: true, // Useful for password fields
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Event date';
                            }
                            return null;
                          },
                        ),
                      ),),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextFormField(
                  maxLines: 5, // Allows up to 5 lines of input
                  decoration: inputDecoration(
                    context,
                    hinText: 'Description',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
              )
              ,
              SizedBox(
                height: 16.h,
              ),
              EventInfoContainer(
                imagePath: '',
                title: 'Tickets',
                onTap: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              EventInfoContainer(
                imagePath: '',
                title: 'Tags',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventTagsScreen(), // Remove curly braces
                    ),
                  );
          
                },
              ),
              SizedBox(
                height: 16.h,
              ),
          
              EventInfoContainer(
                imagePath: '',
                title: 'Event activities',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventActivities(), // Remove curly braces
                    ),
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              EventInfoContainer(
                imagePath: '',
                title: 'Age restrictions',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AgeRestrictions(), // Remove curly braces
                    ),
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              EventInfoContainer(
                imagePath: '',
                title: 'Extras',
                onTap: () {
          
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventExtrasScreen(), // Remove curly braces
                    ),
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              EventInfoContainer(
                imagePath: '',
                title: 'Event visibility',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventVisibilityScreen(), // Remove curly braces
                    ),
                  );
                },
              ),
              SizedBox(
                height: 48.h,
              ),
              PrimaryButton(
                text: 'Create event',
                onPressed: () {},
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 16.sp,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
