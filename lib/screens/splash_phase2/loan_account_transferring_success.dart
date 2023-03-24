import 'package:flutter/material.dart';
import 'package:rubex/screens/home_screen_loan_approved.dart';


class LoanAccountTransferringSuccess extends StatefulWidget {

  static String id = 'LoanAccountTransferringSuccess';


  @override
  State<LoanAccountTransferringSuccess> createState() => _LoanAccountTransferringSuccessState();
}

class _LoanAccountTransferringSuccessState extends State<LoanAccountTransferringSuccess> {


  @override
  void initState(){
    super.initState();
    _navigateToHome();

  }
  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 1500,),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreenLoanApproved()));

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
                  Text('Transfer ho gya h!',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),



              SizedBox(height: 20,),

              Container(
                child: Stack(
                  children: [
                    Icon(
                      Icons.account_balance_outlined,
                      size: 200,
                      color: Colors.deepPurpleAccent,
                    ),
                    Icon(
                      Icons.check,
                      size: 200,
                      color: Colors.grey,
                    ),

                  ]
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
