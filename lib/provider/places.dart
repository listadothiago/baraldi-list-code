import 'dart:math';

import 'package:baraldilist/data/dummy_places.dart';
import 'package:baraldilist/models/place.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Places with ChangeNotifier {
  final Map<String, Place> _items = {...DUMMY_PLACES};

  List<Place> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Place byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Place place) {
    if (place == null) {
      return;
    }
    final id = Random().nextDouble().toString();

    Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

//adicionar
    _items.putIfAbsent(
        id,
        () => Place(
              id: id,
              placename: place.placename,
              placeImgUrl: place.placeImgUrl,
              phonenumber: place.phonenumber,
              location: place.location,
              description: place.description,
              tagline: place.tagline,
            ));

    notifyListeners();
  }
}
