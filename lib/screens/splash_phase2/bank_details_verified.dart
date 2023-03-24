import 'package:flutter/material.dart';
import 'package:rubex/screens/splash_phase2/loan_account_transferring.dart';


class BankDetailsVerified extends StatefulWidget {

  static String id  = 'BankDetailsVerified';

  @override
  State<BankDetailsVerified> createState() => _BankDetailsVerifiedState();
}

class _BankDetailsVerifiedState extends State<BankDetailsVerified> {


  @override
  void initState(){
    super.initState();
    _navigateToHome();

  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoanAccountTransfer()));

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
                  Text('Aapka Account verify ho gya!',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),


              SizedBox(height: 20,),

              Container(
                child: Icon(
                Icons.gpp_good,
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
