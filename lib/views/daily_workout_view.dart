import 'package:fitness_club_app/views/daily_progress_view.dart';
import 'package:flutter/material.dart';
import '../widgets/start_training.dart'; 
import '../widgets/category_chip.dart'; 
import '../widgets/round_card.dart'; 


class DailyWorkoutView extends StatelessWidget {
  const DailyWorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //  top image and tile
              SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/workout_plan/image_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),

                    const Positioned(
                      left: 16,
                      bottom: 16,
                      child: Text(
                        "Full Body Workout",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    CategoryChip(label: "Cardio", selected: true),
                    SizedBox(width: 8),
                    CategoryChip(label: "Boxing"),
                    SizedBox(width: 8),
                    CategoryChip(label: "Zumba"),
                    SizedBox(width: 8),
                    CategoryChip(label: "Hiking"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // start training button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: StartTrainingWidget(onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DailyProgressView(),
                        ),
                      );
                  },),
              ),

              const SizedBox(height: 24),

              //  round cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: const [
                    RoundCard(),
                    SizedBox(height: 16),
                    RoundCard(),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
