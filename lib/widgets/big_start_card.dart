import 'package:flutter/material.dart';

class BigStartCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final Color buttonColor;  

  const BigStartCard({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.buttonColor,   
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,   
      child: SizedBox(
        height: 160,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // background image
              Positioned.fill(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),

              // Start button
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
