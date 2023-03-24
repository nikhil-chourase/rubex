import 'package:flutter/material.dart';
import 'package:rubex/screens/splash_phase2/bank_details_verified.dart';



class BankDetailsVerify extends StatefulWidget {

  static String id = 'BankDetailsVerify';

  @override
  State<BankDetailsVerify> createState() => _BankDetailsVerifyState();
}

class _BankDetailsVerifyState extends State<BankDetailsVerify> {



  @override
  void initState(){
    super.initState();
    _navigateToHome();

  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BankDetailsVerified()));

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  Text('Kripiya Intezar Karein!',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),
              SizedBox(height: 20,),


              Row(
                children: [
                  Text('Apke details verify ho rhi h!', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                child: Icon(
                  Icons.cached,
                  size: 200,
                  color: Colors.deepPurpleAccent,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
