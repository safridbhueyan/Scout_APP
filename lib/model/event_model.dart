class EventModel {
  List<EventList>? eventList;

  EventModel({this.eventList});

  EventModel.fromJson(Map<String, dynamic> json) {
    if (json['eventList'] != null) {
      eventList = <EventList>[];
      json['eventList'].forEach((v) {
        eventList!.add(new EventList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eventList != null) {
      data['eventList'] = this.eventList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventList {
  int? eventId;
  String? imagePath;
  List<String>? category;
  String? eventDate;
  String? eventTitle;
  List<String>? interestedPeople;
  String? organisedBy;
  String? location;
  String? description;
  List<Activities>? activities;

  EventList(
      {this.eventId,
        this.imagePath,
        this.category,
        this.eventDate,
        this.eventTitle,
        this.interestedPeople,
        this.organisedBy,
        this.location,
        this.description,
        this.activities});

  EventList.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId'];
    imagePath = json['imagePath'];
    category = json['category'].cast<String>();
    eventDate = json['eventDate'];
    eventTitle = json['eventTitle'];
    interestedPeople = json['interestedPeople'].cast<String>();
    organisedBy = json['organisedBy'];
    location = json['location'];
    description = json['description'];
    if (json['activities'] != null) {
      activities = <Activities>[];
      json['activities'].forEach((v) {
        activities!.add(new Activities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventId'] = this.eventId;
    data['imagePath'] = this.imagePath;
    data['category'] = this.category;
    data['eventDate'] = this.eventDate;
    data['eventTitle'] = this.eventTitle;
    data['interestedPeople'] = this.interestedPeople;
    data['organisedBy'] = this.organisedBy;
    data['location'] = this.location;
    data['description'] = this.description;
    if (this.activities != null) {
      data['activities'] = this.activities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Activities {
  String? artistName;
  String? times;

  Activities({this.artistName, this.times});

  Activities.fromJson(Map<String, dynamic> json) {
    artistName = json['artistName'];
    times = json['times'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artistName'] = this.artistName;
    data['times'] = this.times;
    return data;
  }
}
