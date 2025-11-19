import 'package:flutter/material.dart';
import 'exercise_tile.dart';

class RoundCard extends StatelessWidget {
  const RoundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Round 01",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),

          ExerciseTile(
            imagePath: "assets/workout_plan/image_2.png",
            title: "Side Stretch Left",
            reps: "3x",
          ),

          SizedBox(height: 12),

          ExerciseTile(
            imagePath: "assets/workout_plan/image_2.png",
            title: "Side Stretch Right",
            reps: "3x",
          ),
        ],
      ),
    );
  }
}
