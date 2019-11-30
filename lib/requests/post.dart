import 'package:flutter/foundation.dart';

class Post {
  final String username;
  final String password;

  Post({
    this.username,
    this.password
  });

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      username: json['userName'],
      password: json['password'],
    );
  }
}