import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rubex/screens/home_screen.dart';
import 'package:rubex/screens/login_screen.dart';

class OtpScreen extends StatefulWidget {

  static String id = 'OtpScreen';


  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final FirebaseAuth auth  = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(100, 39, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(100, 239, 243, 1),
      ),
    );

    var code = '';

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

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('OTP Daalein',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),

              SizedBox(height: 40,),

              Pinput(
                onChanged: (value){
                  code = value;
                },
                length: 6,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),



              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () async{

                    try{
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: LoginScreen.verify, smsCode: code);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential);

                      Navigator.pushNamedAndRemoveUntil(context, HomeScreen.id, (route) => false);
                    }
                    catch(e){
                      print('wrong otp');
                    }
                  }, child: Text('Verify Karien'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent
                  ),
                ),
              ),
              SizedBox(height: 50,),

              Text('Terms Of User & Privacy Policy ko mante hain!', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),

            ],
          ),
        ),
      ),
    );
  }
}
