import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: Center(
          child: Container(
            height: 420,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent ,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(8) , topLeft: Radius.circular(8))
                      ),
                      child: Center(child: Text("Basic Plan" , style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.bold),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Text("\$19" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 25),),
                          Text(" /month" , style:  TextStyle(color: Colors.black87 , fontSize: 18 , fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Text("billed monthly" , style: TextStyle(color: Colors.grey  , fontSize: 13),),
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , bottom: 5),
                      child: Divider(indent: 12, endIndent: 12,),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20 , right: 15),
                          child: Icon(Icons.check, color: Colors.blue , size: 28,),
                        ),
                        Text("Access to basic features")
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20 , right: 15),
                          child: Icon(Icons.check, color: Colors.blue , size: 28,),
                        ),
                        Text("10GB cloud storage")
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20 , right: 15),
                          child: Icon(Icons.check, color: Colors.blue , size: 28,),
                        ),
                        Text("Email support")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15 , bottom: 20),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70 , right: 70 , top: 14 , bottom: 14),
                          child: Text("Get Started" , style: TextStyle(fontSize: 18 , color: Colors.white , fontWeight: FontWeight.bold),),
                        )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" • Default" , style: TextStyle(color: Colors.blue , fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.only(left: 35 , right: 35),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("• Hover" , style: TextStyle(color: Colors.blue , fontSize: 16),),
                            )),
                        ),
                        Text(" • Active" , style: TextStyle(color: Colors.blue , fontSize: 16),)

                      ],
                    )
                   

                  ],
                
                
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}