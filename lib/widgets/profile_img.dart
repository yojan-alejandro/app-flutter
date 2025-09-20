import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double radius;
  final String imageUrl;

  const ProfileImage({
    super.key,
    this.radius = 60,
    this.imageUrl = "https://i.pravatar.cc/300", 
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
