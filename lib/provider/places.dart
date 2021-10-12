import 'package:baraldilist/data/dummy_places.dart';
import 'package:baraldilist/models/place.dart';
import 'package:flutter/material.dart';

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
}
