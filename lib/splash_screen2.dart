import 'package:flutter/material.dart';
import 'package:rubex/screens/phase2/credit_eligibilty.dart';

class SplashScreen2 extends StatefulWidget {


  static String id = 'SplashScreen2';


  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {



  @override
  void initState(){
    super.initState();
    _navigateToHome();

  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CreditEligibilty()));

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
