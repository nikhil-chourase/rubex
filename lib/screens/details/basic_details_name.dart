import 'package:flutter/material.dart';

import 'basic_details_dob.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class BasicName extends StatefulWidget {

  static String id = 'BasicName';


  @override
  State<BasicName> createState() => _BasicNameState();
}

class _BasicNameState extends State<BasicName> {

  final fireStore = FirebaseFirestore.instance;

  String names = '';
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
              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 260,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),


                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),
              Row(
                children: [
                  Text('Apna naam batayein',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),

              SizedBox(height: 30,),

              Container(
                height: 45,
                child: Container(

                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [

                      SizedBox(
                        width: 150,
                        child: TextField(
                          onChanged: (value){
                            names = value;

                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 30,),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: ()  {
                    
                    fireStore.collection('name').add({
                      'naam': names
                    });

                    Navigator.pushNamed(context, BasicBday.id);

                  }, child: Text('Aage Badhein'),
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
