import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String? assetPath;
  final double radius;
  const ProfilePhoto({super.key, this.assetPath, this.radius = 60});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.blueAccent,
      backgroundImage: assetPath != null ? AssetImage(assetPath!) : null,
      child: assetPath == null
          ? Icon(Icons.person, size: radius * 1.3, color: Colors.white)
          : null,
    );
  }
}
