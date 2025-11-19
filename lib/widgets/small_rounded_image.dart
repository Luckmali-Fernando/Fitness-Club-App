import 'package:flutter/material.dart';

class SmallRoundedImage extends StatelessWidget {
  final String imagePath;

  const SmallRoundedImage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
