import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class MenuOptions extends StatefulWidget {

  static String id = 'MenuOptions';

  @override
  State<MenuOptions> createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {

  final firestore = FirebaseFirestore.instance;






  void namesStream() async{
    
    await for(var snapshot in firestore.collection('name').snapshots()){

      for(var names in snapshot.docs){
        print(names.data());
      }
    }




  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 45,left: 20,right: 20,),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('images/img1.png',height: 100,),
                    ],
                  ),

                  SizedBox(height: 30,),


                  // StreamBuilder<QuerySnapshot>(
                  //     builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
                  //       if(snapshot.hasData){
                  //         return Text(snapshot!.data.toString(),
                  //           style: TextStyle(
                  //               fontSize: 20, fontWeight: FontWeight.w400
                  //           ),
                  //         );
                  //       }
                  //       else{
                  //         return Text('@Name',
                  //           style: TextStyle(
                  //               fontSize: 20, fontWeight: FontWeight.w400
                  //           ),
                  //         );
                  //       }
                  //     },
                  //   stream: firestore.collection('name').snapshots(),
                  //
                  // ),

                  Row(
                    children: [
                      Text('Nikhil',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                    ],
                  ),
                  SizedBox(height: 10,),


                  // StreamBuilder<QuerySnapshot>(
                  //   builder: (context, snapshot){
                  //     if(snapshot.hasData){
                  //       return Text(snapshot.data.toString(),
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.w400
                  //         ),
                  //       );
                  //     }
                  //     else{
                  //       return Text('@Name',
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.w400
                  //         ),
                  //       );
                  //     }
                  //   },
                  //   stream: firestore.collection('numbers').snapshots(),
                  //
                  // ),
                  Row(
                    children: [
                      Text('9755923490',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                    ],
                  ),
                  SizedBox(height: 5,),


                  Container(
                    height: 1,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 10,),
                      Text('Share Karein',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 1,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Help',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(width: 10,),
                      Text('Call',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 1,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('About Us',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                  SizedBox(height: 5,),
                  Text('Privacy Policy',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                  SizedBox(height: 5,),
                  Text('Terms Of User',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),
                  SizedBox(height: 5,),
                  Text('Log Out',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 1),




                ],
              ),
            ),
          ),


          Column(
            children: [
              Container(
                height: 1,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [

                      IconButton(onPressed: (){

                        Navigator.pop(context);

                      },
                          icon: Icon(Icons.home_outlined)
                      ),
                      Text('Home',style: TextStyle(fontSize: 15),),
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context, MenuOptions.id);

                      },
                        icon: Icon(Icons.menu),
                      ),
                      Text('Menu',style: TextStyle(fontSize: 15),),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ],
      ),


    );
  }
}
