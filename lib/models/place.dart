import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Place {
  final String id;
  final String placename;
  final List location;
  final String phonenumber;
  final String password;
  final String placeImgUrl;
  final String tagline;
  final String description;

  const Place(
      {this.placename = 'none',
      this.location = const [0, 0],
      this.placeImgUrl = 'none',
      this.phonenumber = 'Phone number unknown.',
      this.password = 'not set',
      this.id = '0',
      this.tagline = 'Something interesting lies here...',
      this.description = 'We would love to know more about this place.'});
}
