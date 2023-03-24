import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'otp_verification.dart';

class LoginScreen extends StatefulWidget {

  static String id = 'LoginScreen';

  static String verify = '';



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final fireStore = FirebaseFirestore.instance;

  TextEditingController countryCode = TextEditingController();
  var phone = '';

  @override
  void initState(){
    countryCode.text='+91';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(

            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('images/img1.png',height: 100,),
                ],
              ),

              SizedBox(height: 20,),

              Text('Apna Mobile Number Verify Karien',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.only(left: 30),
                height: 45,
                child: Container(

                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),


                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countryCode,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      // SizedBox(width: 10,),
                      Text('|',style: TextStyle(color: Colors.grey,fontSize: 30),),
                      SizedBox(width: 10,),

                      Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            onChanged: (value){
                              phone = value;
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Mobile Number',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30,),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () async {

                    fireStore.collection('numbers').add({
                      'phoneNumber': phone
                    });


                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${countryCode.text+phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        LoginScreen.verify = verificationId;
                        Navigator.pushNamed(context, OtpScreen.id);
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},

                    );
                  }, child: Text('OTP Payein'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent
                  ),
                ),
              ),
              SizedBox(height: 30,),
              
              Text('Terms Of User & Privacy Policy ko mante hain!', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),

            ],
          ),
        ),
      ),
    );
  }
}
