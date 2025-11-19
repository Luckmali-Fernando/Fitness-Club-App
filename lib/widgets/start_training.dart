import 'package:flutter/material.dart';
import 'package:fitness_club_app/app_sizes.dart';
import 'package:fitness_club_app/colors.dart';
import 'package:fitness_club_app/fonts.dart';

class StartTrainingWidget extends StatelessWidget {
  final VoidCallback onTap;  

  const StartTrainingWidget({
    super.key,
    required this.onTap,    
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, 
      child: SizedBox(
        height: AppSizes.playOuter,
        width: double.infinity,
        child: Row(
          children: [
            // Main long button
            Expanded(
              child: Container(
                height: AppSizes.buttonHeight,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
                ),
                child: const Center(
                  child: Text(
                    "Start Training",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            // Connector
            Container(
              width: AppSizes.connectorWidth,
              height: AppSizes.connectorHeight,
              color: Colors.red,
            ),

            // Play icon button
            Container(
              width: AppSizes.playOuter,
              height: AppSizes.playOuter,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: AppSizes.playInner,
                  height: AppSizes.playInner,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child:Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.red,
                        size: AppSizes.playInner*0.70,
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
