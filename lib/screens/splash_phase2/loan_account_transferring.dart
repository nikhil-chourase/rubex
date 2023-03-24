import 'package:flutter/material.dart';
import 'package:rubex/screens/splash_phase2/loan_account_transferring_success.dart';


class LoanAccountTransfer extends StatefulWidget {

  static String id = 'LoanAccountTransfer';

  @override
  State<LoanAccountTransfer> createState() => _LoanAccountTransferState();
}

class _LoanAccountTransferState extends State<LoanAccountTransfer> {


  @override
  void initState(){
    super.initState();
    _navigateToHome();

  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoanAccountTransferringSuccess()));


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
                  Text('Loan Aapke account me!',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),

              Row(
                children: [
                  Text('Transfer ho rha h!',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),


              SizedBox(height: 20,),

              Container(
                child: Icon(
                  Icons.account_balance_outlined,
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
