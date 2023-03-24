import 'package:flutter/material.dart';
import 'package:rubex/screens/home_screen.dart';
import 'package:rubex/screens/menu_options.dart';

class HomeScreenLoanApproved extends StatefulWidget {

  static String id = 'HomeScreenLoanApproved';

  @override
  State<HomeScreenLoanApproved> createState() => _HomeScreenLoanApprovedState();
}

class _HomeScreenLoanApprovedState extends State<HomeScreenLoanApproved> {
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
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                    ),
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Loan Amount',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                            Text('6,000',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Byaaz Darr',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                            Text('12%',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Wapas ki Rakam',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                            Text('6,090',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Masik EMI',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                            Text('2,030',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('EMI ki taarikh' ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                            Text('10, Feb',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    height: 140,
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
                    Navigator.pushNamed(context, HomeScreen.id);

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
