import 'package:flutter/material.dart';

ClipOval profileWidget() {
  return ClipOval(
    child: SizedBox.fromSize(
      size: const Size.fromRadius(28.0),
      child: Image.asset('assets/profile_photo.jpg', fit: BoxFit.cover),
    ),
  );
}
