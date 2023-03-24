import 'package:flutter/material.dart';
import 'package:rubex/screens/home_screen.dart';
import 'package:rubex/screens/phase2/loan_amount.dart';



class CreditEligibilty extends StatefulWidget {

  static String id = 'CreditEligibilty';



  @override
  State<CreditEligibilty> createState() => _CreditEligibiltyState();
}

class _CreditEligibiltyState extends State<CreditEligibilty> {
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

              Container(
                height: 100,
                width: 250,
                color: Colors.grey.shade300,
              ),

              SizedBox(height: 50,),

              Row(
                children: [
                  Text('Aapko 12000 tk ki rashi tk ka loan mil skta',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),
              Row(
                children: [
                  Text('hai, jo aapko 6 mahine ke andar wapas kr',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text('sakte hein',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),

              SizedBox(height: 50,),


              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: ()  {
                    Navigator.pushNamed(context, LoanAmountFinal.id);

                  }, child: Text('Loan Amount Janein'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent
                  ),
                ),
              ),

              SizedBox(height: 10,),

              MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, HomeScreen.id);

                  },
                child: Center(
                  child: Text(
                    'Abhi Loan nahi chahiye',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      color: Colors.deepPurpleAccent,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.grey.shade400,
                      decorationThickness: 3,


                    ),
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
