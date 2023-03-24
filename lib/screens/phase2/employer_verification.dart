import 'package:flutter/material.dart';
import 'package:rubex/splash_screen2.dart';

class EmployerVerify extends StatefulWidget {

  static String id = 'EmployerVerify';


  @override
  State<EmployerVerify> createState() => _EmployerVerifyState();
}

class _EmployerVerifyState extends State<EmployerVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('images/img1.png',height: 100,),
                ],
              ),


              SizedBox(height: 50,),
              Row(
                children: [
                  Text('Milega?',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Jinke Pass Aap Kaam krte hain, unka',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text('mobile number dein',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),



              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 45,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 275,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 45,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 275,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 45,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 275,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: ()  {
                    Navigator.pushNamed(context, SplashScreen2.id);

                  }, child: Text('Loan Amount Janein'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent
                  ),
                ),
              ),






            ],
          ),
        ),

      ),
    );
  }
}
