
import 'package:flutter/material.dart';
import 'package:rubex/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {

  static String id = 'splashScreen';


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _navigateToHome();

  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 4500,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        alignment: Alignment.center,

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

              Text('Loans For Bai',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
              SizedBox(height: 20,),

              SizedBox(height: 30,),

              Text('Ab pae loan sirf kuch hi click mein', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),


            ],
          ),
        ),
      ),
    );

  }
}
