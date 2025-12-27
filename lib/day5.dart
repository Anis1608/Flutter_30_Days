import 'package:flutter/material.dart';
import 'package:flutter_practice/day05Footer.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              height: 300,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assests/google.jpg",
                              width: 100,
                              height: 50,
                            ),
                            Text(
                              "Hello My name is Anis khan,\nI am flutter Devloper,\ni am from Mumbai",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blueAccent,
                                    size: 32,
                                  ),
                                  Icon(
                                    Icons.telegram,
                                    color: Colors.blueAccent,
                                    size: 32,
                                  ),
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blueAccent,
                                    size: 32,
                                  ),
                                  Icon(
                                    Icons.telegram,
                                    color: Colors.blueAccent,
                                    size: 32,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Company",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            customText(context, "Careers"),
                            SizedBox(height: 5),
                            customText(context, "blog"),
                            SizedBox(height: 5),
                            customText(context, "Press"),
                            SizedBox(height: 5),
                            customText(context, "Contact Us"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Resoures",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            customText(context, "Help Center"),
                            SizedBox(height: 5),
                            customText(context, "Guides"),
                            SizedBox(height: 5),
                            customText(context, "FAQs"),
                            SizedBox(height: 5),
                            customText(context, "Support"),
                            SizedBox(height: 5),
                            customText(context, "Privacy Policy"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Subcribe",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Subscribe to our newsitter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 10),

                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF374151),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 200,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Enter your mail",
                                        filled: true,
                                        fillColor: const Color(0xFF374151),
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 16,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text("Subscribe"),
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Divider(color: Colors.white24),
                  SizedBox(height: 12),

                  Text(
                    "© 2024 Your Company. All rights reserved.",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customText(BuildContext context, String text) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => Day05Footer(displayText: text)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
