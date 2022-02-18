import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/place.dart';
import 'dart:io';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(
    String pickedtitle,
    XFile pickedImage,
  ) {
    final newPlace = Place(
      id: DateTime.now().toIso8601String(),
      image: pickedImage,
      location: null,
      title: pickedtitle,
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
