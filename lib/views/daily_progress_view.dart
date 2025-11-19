import 'package:flutter/material.dart';
import '../widgets/progress_header.dart';
import '../widgets/progress_text.dart';
import '../widgets/bottom_info.dart';

class DailyProgressView extends StatelessWidget {
  const DailyProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            //  Top part
            Expanded(
              child: Stack(
                children: [
                  const ProgressHeader(
                    title: 'Daily Progress',
                    imagePath: 'assets/daily_progress/image_1.png',
                  ),

                  // Stats
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, bottom: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ProgressText(
                            value: '05:85',
                            label: 'Time Spent',
                          ),
                          SizedBox(height: 18),
                          ProgressText(
                            value: '05:85',
                            label: 'Heart Rate',
                          ),
                          SizedBox(height: 18),
                          ProgressText(
                            value: '850',
                            label: 'Calories',
                          ),
                          SizedBox(height: 18),
                          ProgressText(
                            value: '1200',
                            label: 'steps',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom black bar
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BottomInfo(
                    icon: Icons.access_time,
                    label: '3hrs',
                  ),
                  BottomInfo(
                    icon: Icons.location_on,
                    label: '5km',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
