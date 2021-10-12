import 'package:flutter/material.dart';

class User {
  final String id;
  final String username;
  final String smsnumber;
  final String email;
  final String password;
  final String avatarUrl;

  const User({
    this.id,
    @required this.username,
    @required this.smsnumber,
    @required this.avatarUrl,
    this.email,
    this.password,
  });
}
