import 'package:fitness_club_app/views/daily_workout_view.dart';
import 'package:flutter/material.dart';
import '../widgets/big_start_card.dart';
import '../widgets/small_rounded_image.dart';
import '../widgets/banner_card.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Hello text
              const Text(
                'Hello Jenna,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),

              const Text(
                "Let’s start exercising",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 24),

              // top big cards
              Row(
                children: [
                  Expanded(
                    child: BigStartCard(
                      buttonColor: Colors.red,
                      imagePath: 'assets/main_dashboard/image_1.png',
                      onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DailyWorkoutView(),
                        ),
                      );
                    },

                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: BigStartCard(
                      buttonColor: Colors.pinkAccent,
                      imagePath: 'assets/main_dashboard/image_2.png',
                      onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DailyWorkoutView(),
                        ),
                      );
                    },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // recommended tile 
              const Text(
                'Recommended for you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              //  three small images
              Row(
                children: const [
                  Expanded(
                    child: SmallRoundedImage(
                      imagePath: 'assets/main_dashboard/image_3.png',
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: SmallRoundedImage(
                      imagePath: 'assets/main_dashboard/image_4.png',
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: SmallRoundedImage(
                      imagePath: 'assets/main_dashboard/image_5.png',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // banner 1
              const BannerCard(
                imagePath: 'assets/main_dashboard/image_6.png',
                title: 'Find me a personal trainer',
                subtitle: 'Explore now',
              ),

              const SizedBox(height: 16),

              //  banner 2
              const BannerCard(
                imagePath: 'assets/main_dashboard/image_7.png',
                title: 'Find me group classes',
                subtitle: 'Explore now',
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
