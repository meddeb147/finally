import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NextHome extends StatefulWidget {
  const NextHome({Key? key}) : super(key: key);

  @override
  State<NextHome> createState() => _NextHomeState();
}

class _NextHomeState extends State<NextHome> {

  var data = Get.arguments ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        actions: [
         Container (
           margin: EdgeInsets.only(right: 20),
             child: Center(child: Text("Mes sites", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),))
         )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10,  ),
        color: Colors.grey.withOpacity(0.2),
        child: Container(
          height: MediaQuery.of(context).size.height*0.5,
        width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Column(
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                      ),
        
        
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
        
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding : EdgeInsets.only(left : 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("lib/assets/image_2023-04-26_020726375-removebg-preview.png", scale: 10,),
                                    SizedBox(width: 150,),
                                    Text("TND ", style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),),
                                    Text("${data[5]}", style: TextStyle(color: Colors.grey),)
                                  ],
                                ),
                              ),
                              Container(
                                  child: Text("${data[0]}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                              SizedBox(height: 5,),
                              Container(
                                child: Text("R+${data[1]} etages", style: TextStyle(color: Colors.grey),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    child: Text("${data[3]} ", style: TextStyle(color: Colors.grey),),
                                  ),
                                  SizedBox(width: 150,),
                                  Icon(Icons.electric_bolt, color: Colors.orange,size: 40,),
        
                                  Container(
        
                                      child: Text("KW  ", style: TextStyle(color: Colors.orange),)),
                                  Text("${data[4]}", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
        
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
        
                ],
        
              ),
        
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                   
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${data[1]}"),
                              Image.asset("lib/assets/image_2023-05-03_113104279-removebg-preview.png", scale: 3,)
                            ],
                          ),
                          Text("Etages", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                  
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("${data[2]}"),
                              Image.asset("lib/assets/image_2023-04-26_020726375-removebg-preview.png", scale: 10,)
                            ],
                          ),
                          Text("Armoires", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // second row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                   
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
        
        
                              Image.asset("lib/assets/image_2023-04-26_020726375-removebg-preview.png", scale: 10,)
                            ],
                          ),
                          Text("Equipements", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
           
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
        
                              Image.asset("lib/assets/image_2023-04-26_020726375-removebg-preview.png", scale: 10,)
                            ],
                          ),
                          Text("Fiche site", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
