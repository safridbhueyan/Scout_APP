import 'package:flutter/material.dart';

class SearchScreenProvider with ChangeNotifier{

  final List<Map<String, dynamic>> _eventCategory = [
    {
      "eventName":"Music",
      "imagePath":"assets/images/event/music_category.png",
    },
    {
      "eventName":"Sport",
      "imagePath":"assets/images/event/sport_category.png",
    },
    {
      "eventName":"Festivals",
      "imagePath":"assets/images/event/festivals_category.png",
    },
    {
      "eventName":"Art & Theatre",
      "imagePath":"assets/images/event/art_theatre.png",
    },
    {
      "eventName":"Nightlife",
      "imagePath":"assets/images/event/nightlife.png",
    },
    {
      "eventName":"Food & Drink",
      "imagePath":"assets/images/event/food_drink_category.png",
    },
  ];

  List<Map<String, dynamic>> get eventCategory => _eventCategory;



}