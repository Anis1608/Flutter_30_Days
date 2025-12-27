import 'package:flutter/material.dart';

class Day6 extends StatelessWidget {
  const Day6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assests/background_day6.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left Section
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Main Heading
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Empower ',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1F3A5F),
                                ),
                              ),
                              TextSpan(
                                text: 'Your Business\nwith ',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1F3A5F),
                                ),
                              ),
                              TextSpan(
                                text: 'Innovative Solutions',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0099FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        // Subtitle
                        Text(
                          'Leveraging cutting-edge technology to drive\nsuccess and help grow your business',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF999999),
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 40),
                        // Buttons
                        Row(
                          children: [
                            // Get Started Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0099FF),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            // Watch Demo Button
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 16,
                                ),
                                side: BorderSide(
                                  color: Color(0xFF0099FF),
                                  width: 2,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                'Watch Demo',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0099FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50),
                        // Stats Section
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StatItem(
                              icon: '✓',
                              text: '+1200 Clients Served',
                            ),
                            SizedBox(height: 15),
                            StatItem(
                              icon: '✓',
                              text: '+99% Customer Satisfaction',
                            ),
                            SizedBox(height: 15),
                            StatItem(
                              icon: '✓',
                              text: '24/7 Support',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  // Right Section - Illustration
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        // Background Elements
                        Positioned(
                          top: 20,
                          right: 20,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFD700).withOpacity(0.8),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.lightbulb, color: Colors.orange, size: 30),
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 20,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        // Center Illustration (simplified)
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Left Figure
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0099FF),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 40,
                                        height: 80,
                                        color: Color(0xFF0099FF),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  // Right Figure
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFCC00),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 40,
                                        height: 80,
                                        color: Color(0xFFFFCC00),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              // Chart elements
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ChartBar(height: 40),
                                  SizedBox(width: 10),
                                  ChartBar(height: 60),
                                  SizedBox(width: 10),
                                  ChartBar(height: 80),
                                  SizedBox(width: 10),
                                  ChartBar(height: 50),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Dollar sign
                        Positioned(
                          top: 80,
                          right: 30,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFCC00),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String icon;
  final String text;

  const StatItem({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: Color(0xFF0099FF),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              icon,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF333333),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class ChartBar extends StatelessWidget {
  final double height;

  const ChartBar({
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFF0099FF),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}