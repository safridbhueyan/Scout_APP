import 'package:flutter/material.dart';
import 'package:scout_app/model/event_model.dart';

class EventDetailsScreenProvider with ChangeNotifier{

  EventList? _detailsOfEvent;
  EventList?  get detailsOfEvent => _detailsOfEvent;

  void setEventDetails(final event){
    _detailsOfEvent = event;
    notifyListeners();
  }

}