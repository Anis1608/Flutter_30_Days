import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            height: 480,
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: Colors.white, 
              boxShadow: [BoxShadow(color: Colors.white , offset: Offset.zero , blurRadius: 0.5)]
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage("https://res.cloudinary.com/yg123/image/upload/v1763974165/jvbrmea7tk7ifh3ekgkz.webp"),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rohit Sharma" , style: TextStyle(color: Colors.black , fontSize: 20),),
                      ],
                                  
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Indian Cricketer" , style: TextStyle(color: Colors.grey[800] , fontSize: 15),),
                      ],
                                    
                    ),
                  ),
                Divider(indent: 20,endIndent: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Passionate to Win ODI world cup 2027 in USA & Canada" , style: TextStyle(color: Colors.grey[900],  fontSize: 13),)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already the Winner of the T20 World Cup 2024" , style: TextStyle(color: Colors.grey[900],  fontSize: 13),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15 , top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: (){}, 
                        child: Text("Follow" , style: TextStyle(color: Colors.white , fontSize: 16),) , style :ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)) , backgroundColor: Colors.blue[900])
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: (){}, child: 
                        Text("Message" , style: TextStyle(color: Colors.white , fontSize: 16),) , style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(6)) , backgroundColor: Colors.blue[900]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(onPressed: (){}, child: 
                        Text("Contact" , style: TextStyle(color: Colors.white , fontSize: 16),) , style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(6)) , backgroundColor: Colors.blue[900]), 
                        ),
                      )
                    ],
                  ),
                ) , 
                Divider(indent: 20, endIndent: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook , size: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20 , right: 13),
                      child: Image.asset("assests/twitter.jpg" , width: 32, height: 32,),
                    ),
                    Image.asset("assests/instagram.jpg" , width: 45,  height: 45,)  
                  ],
                )
              
                ],
              ),
            ),
          
          ),
        ),
      ),
    );

  }
}