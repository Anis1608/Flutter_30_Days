import 'dart:ui';

import 'package:flutter/material.dart';

class Day2 extends StatelessWidget {
  const Day2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Container(
            height: 670,
            width: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14 , right: 14 , top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("The Future of Web Development" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16 , color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 13),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 24, backgroundImage: NetworkImage("https://res.cloudinary.com/yg123/image/upload/v1763974165/jvbrmea7tk7ifh3ekgkz.webp")),
                      Padding(
                        padding: const EdgeInsets.only(left: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rohit Sharma" , style: TextStyle(fontWeight: FontWeight.bold ,),),
                          Row(
                            children: [
                              Text("April 24 , 2024 "),
                              Text("5 min read" , style: TextStyle(fontSize: 13.5),),
                            ],
                          )
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                    child: Image(image: NetworkImage("https://tse4.mm.bing.net/th/id/OIP.CnUGfyvcbhwf-KOYfEKaEgHaEJ?pid=Api&P=0&h=180"), fit: BoxFit.cover)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8 , bottom: 10),
                    child: Text("web development is evolving rapidly with new technologies and\ntrends emerging every year. In this article, We will explore some\nof the key trends of technologies that are shaping the future of web devlopment." , style: TextStyle(fontSize: 13 , color: Colors.black),),
                  ),   
                  Text("Key Trends in Web Development" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    Padding(
                      padding: const EdgeInsets.only(left: 24 , top: 14 , bottom: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text("•  progressive web Apps (PWAs)"),
                      Text("•  Single Page Applications (SPAs)"),
                      Text("•  Serverless Architechture"),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text("The importance of learning Continously" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15)),
                  ),
                  Text("Staying updated with the latest web development trends / technologies is crucial for any developer. Continous learning and adaptability are key to thriving in this ever changing field." , style: TextStyle(fontSize: 13 , color: Colors.black),),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text("As the web development landscape continues to evolve, develpers need to be adaptable and proactive in learning new skills, By staying informed about the other trends and technologies, you can ensure that you're skill always at the industry." , style: TextStyle(fontSize: 13 , color: Colors.black),),
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