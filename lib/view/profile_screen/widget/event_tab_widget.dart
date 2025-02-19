import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  bool showAllEvents =
      true;

  final List<Map<String, String>> intEvents = [
    {'image': 'assets/images/event/event.png'},
  ];

  final List<Map<String, String>> myEvents = [
    {'image': 'assets/images/event/event_01.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Custom Tabs
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // All Events Tab
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAllEvents = true;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Interested Events",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff000000),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10), // Gap before the underline
                      if (showAllEvents)
                        Container(
                          width: 145, // Adjust width based on text size
                          height: 1, // Underline thickness (10px)
                          color: Colors.black, // Underline color
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 40.w), // Spacing between tabs
                // My Events Tab
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAllEvents = false;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "My Events",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Color(0xff000000),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10), // Gap before the underline
                      if (!showAllEvents)
                        Container(
                          width: 100, // Adjust width based on text size
                          height: 1, // Underline thickness (10px)
                          color: Colors.black, // Underline color
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Event List
          Expanded(
            child: EventList(events: showAllEvents ? intEvents : myEvents),
          ),
        ],
      ),
    );
  }
}

class EventList extends StatelessWidget {
  final List<Map<String, String>> events;

  EventList({required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: events.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(

          ),child:  Image.asset(events[index]['image'] ?? ''),

        );
      },
    );
  }
}
