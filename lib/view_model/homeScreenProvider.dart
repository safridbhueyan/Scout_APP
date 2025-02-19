import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:scout_app/model/event_model.dart';

class HomeScreenProvider with ChangeNotifier{
  HomeScreenProvider(){
    debugPrint("\nHome Screen Provider is called!\n");
  }

  EventModel? eventModel;

  final Map<String, dynamic> _demoEvents = {
    "eventList": [
      {
        "eventId": 1,
        "imagePath": "assets/images/event/event_01.png",
        "category": [
          "Nightlife",
          "Music",
          "Others"
        ],
        "eventDate": "1 MARCH 2024, 12:00 - 00:00",
        "eventTitle": "Ultra Cape Town",
        "interestedPeople": [
          "Safrid",
          "Wahab",
          "Bashar",
          "Shakin"
        ],
        "organisedBy": "Ultra South Africa",
        "location": "Ostrich Ranch, Van Schoorsdrif Rd, Philipine",
        "description": "Africa's largest electronic music festival, which is part of the Ultra Music Festival's worldwide expansion. The festival takes place in two cities, Johannesburg and Cape Town, and is strictly for those 18 and older. Having debuted in 2014, Ultra South Africa is the third longest-standing world edition of the festival.",
        "activities": [
          {
            "artistName": "James",
            "times": "12:00 - 13:00"
          },
          {
            "artistName": "Ayub Bacchu",
            "times": "13:00 - 14:00"
          },
          {
            "artistName": "Singer Wahab",
            "times": "14:00 - 15:00"
          },
          {
            "artistName": "Singer Bashar",
            "times": "15:00 - 16:00"
          },
          {
            "artistName": "Singer Safrid",
            "times": "16:00 - 17:00"
          }
        ]
      },
      {
        "eventId": 2,
        "imagePath": "assets/images/event/event_02.png",
        "category": [
          "Nightlife",
          "Music"
        ],
        "eventDate": "3 APRIL 2024, 12:00 - 00:00",
        "eventTitle": "Timo ODV - Live at Halo",
        "interestedPeople": [
          "Safrid",
          "Wahab",
          "Bashar",
          "Shakin",
          "Shakin",
          "Shakin",
          "Shakin",
          "Shakin"
        ],
        "organisedBy": "Ultra South Africa",
        "location": "Ostrich Ranch, Van Schoorsdrif Rd, Philipine",
        "description": "Africa's largest electronic music festival, which is part of the Ultra Music Festival's worldwide expansion. The festival takes place in two cities, Johannesburg and Cape Town, and is strictly for those 18 and older. Having debuted in 2014, Ultra South Africa is the third longest-standing world edition of the festival.",
        "activities": [
          {
            "artistName": "James",
            "times": "12:00 - 13:00"
          },
          {
            "artistName": "Ayub Bacchu",
            "times": "13:00 - 14:00"
          },
          {
            "artistName": "Singer Wahab",
            "times": "14:00 - 15:00"
          },
          {
            "artistName": "Singer Bashar",
            "times": "15:00 - 16:00"
          },
          {
            "artistName": "Singer Safrid",
            "times": "16:00 - 17:00"
          }
        ]
      }
    ]
  };


  Future<void> getEvent() async {
    eventModel = EventModel.fromJson(_demoEvents);
    notifyListeners();
  }

  Future<void> requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();

    if (status.isGranted) {
      print("Location permission granted");
    } else if (status.isDenied) {
      print("Location permission denied");
    } else if (status.isPermanentlyDenied) {
      print("Location permission permanently denied. Open app settings.");
      openAppSettings(); // Opens app settings for manual permission change
    }
  }

}