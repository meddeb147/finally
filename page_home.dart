import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'page_debatiment.dart';


List<Map<String, dynamic>> myMapList = [
{
'NomBatiment': 'Batiment1',
'NbEtage': 2,
'country': "Tunisie",
'tnd': 1000,
'kw': 3,
'armoires': 8,
'equipement': "",
  'id': 1
},
  {
    'NomBatiment': 'Batiment1',
    'NbEtage': 2,
    'country': "Tunisie",
    'tnd': 1000,
    'kw': 3,
    'armoires': 8,
    'equipement': "",
    'id': 2
  },
  {
    'NomBatiment': 'Batiment1',
    'NbEtage': 2,
    'country': "Tunisie",
    'tnd': 1000,
    'kw': 3,
    'armoires': 8,
    'equipement': "",
    'id': 3
  },
  {
    'NomBatiment': 'Batiment1',
    'NbEtage': 2,
    'country': "Tunisie",
    'tnd': 1000,
    'kw': 3,
    'armoires': 8,
    'equipement': "",
    'id': 4
  },
  {
    'NomBatiment': 'Batiment1',
    'NbEtage': 2,
    'country': "Tunisie",
    'tnd': 1000,
    'kw': 3,
    'armoires': 8,
    'equipement': "",
    'id': 5
  },
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/assets/pgsZL6FT_400x400-removebg-preview.png", scale: 10,),
              Text("Tunisie Telecom", style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: Column( 
          children: [
            SizedBox(height: 50,),
            Container(
              width: 320,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Ajouter", style: TextStyle(color: Colors.blueAccent),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,

                ),
              ),
            ),
            SizedBox(height: 50,),
            Expanded(
              child: ListView.builder(
                  itemCount: myMapList.length ,
                  itemBuilder: (context, index){

                    return GestureDetector(
                      onTap: (){
                        Get.to(()=> NextHome(), arguments:  [
                          myMapList[index]['NomBatiment'],
                          myMapList[index]['NbEtage'],
                          myMapList[index]['armoires'],
                          myMapList[index]['country'],
                          myMapList[index]['kw'],
                          myMapList[index]['tnd']
                        ] );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        height: 200,
                        width: 100,
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Card(
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
                                      Text("${myMapList[index]["tnd"]}", style: TextStyle(color: Colors.grey),)
                                    ],
                                  ),
                                ),
                                Container(
                                    child: Text("${myMapList[index]["NomBatiment"]}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                                SizedBox(height: 5,),
                                Container(
                                  child: Text("R+${myMapList[index]["NbEtage"]} etages", style: TextStyle(color: Colors.grey),),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Container(
                                      child: Text("${myMapList[index]["country"]} ", style: TextStyle(color: Colors.grey),),
                                    ),
                                    SizedBox(width: 150,),
                                    Icon(Icons.electric_bolt, color: Colors.orange,size: 40,),

                                    Container(

                                        child: Text("KW  ", style: TextStyle(color: Colors.orange),)),
                                    Text("${myMapList[index]["kw"]}", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }

              ),
            ),
            SizedBox(height: 20,),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      child: ElevatedButton(

                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade900
                          ),
                        child: Row(
                          children: [
                            Icon(Icons.house_outlined, color: Colors.white,),
                            Text("Mes sites", style: TextStyle(color: Colors.white),)
                          ],
                        )
                      ),
                    ),
                  ),  
                  Expanded(
                    child: Container(
                      height: 60,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.house_outlined, color: Colors.blue.shade900,),
                              Text("Tableaux", style: TextStyle(color: Colors.blue.shade900),)
                            ],
                          )
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}
