import 'package:flutter/material.dart';
import 'package:rubex/screens/details/basic_details_name.dart';
import 'package:rubex/screens/menu_options.dart';


class HomeScreen extends StatefulWidget {

  static String id = 'HomeScreen';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                children: [
                  Row(
                    children: [
                      Image.asset('images/img1.png',height: 100,),
                    ],
                  ),

                  SizedBox(height: 30,),

                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(
                          width: 400,
                            child: Text('Paayien 12 hazar tak ka loan, 6 mahine\n k liye, sirf 12% bayaaz darr par',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 3)),
                        SizedBox(height: 20,),
                        Row(

                          children: [
                            SizedBox(
                              width: 130,
                              child: ElevatedButton(
                                onPressed: () async {
                                  Navigator.pushNamed(context, BasicName.id);

                                }, child: Text('Loan Lein'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.deepPurpleAccent
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(
                            width: 400,
                            child: Text('Ab paayien apni salary seedha \n apne bank account me',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,),textAlign: TextAlign.center,maxLines: 3)),
                        SizedBox(height: 20,),
                        Row(

                          children: [
                            SizedBox(
                              width: 130,
                              child: ElevatedButton(
                                onPressed: () async {

                                }, child: Text('Salary Lein'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.deepPurpleAccent
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(onPressed: (){

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
    );
  }
}
