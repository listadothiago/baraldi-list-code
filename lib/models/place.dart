import 'package:flutter/material.dart';

class Place {
  final String id;
  final String placename;
  final String location;
  final String phonenumber;
  final String password;
  final String placeImgUrl;
  final String headline;

  const Place(
      {this.placename = 'none',
      this.location = 'placeholder',
      this.placeImgUrl = 'none',
      this.phonenumber = 'Phone number unknown.',
      this.password = 'not set',
      this.id = '0',
      this.headline = 'Something interesting lies here...'});
}
