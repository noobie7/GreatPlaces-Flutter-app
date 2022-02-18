import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PlaceLocation {
  final double latitude;
  final double logitude;
  final String? address;

  PlaceLocation({
    required this.logitude,
    required this.latitude,
    this.address,
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation? location;
  final XFile image;

  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}
