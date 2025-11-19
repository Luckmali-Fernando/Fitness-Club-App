import 'package:flutter/material.dart';

class ProgressHeader extends StatelessWidget {
  final String title;
  final String imagePath;

  const ProgressHeader({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7B0000),
            Color(0xFF150000),
          ],
        ),
      ),
      child: Stack(
        children: [
          // Back arrow
          Positioned(
            left: 16,
            top: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),

          // Title
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          // Girl image
          Positioned(
            right: 10,    
            bottom: -60,    
            child: Image.asset(
              imagePath,
              height: 700, 
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
