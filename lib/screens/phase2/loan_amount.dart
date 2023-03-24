import 'package:flutter/material.dart';
import 'package:rubex/screens/phase2/bank_details.dart';


class LoanAmountFinal extends StatefulWidget {

  static String id = 'LoanAmountFinal';


  @override
  State<LoanAmountFinal> createState() => _LoanAmountFinalState();
}

class _LoanAmountFinalState extends State<LoanAmountFinal> {
  double rating = 1000;
  double rating1 = 1;
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



              SizedBox(height: 30,),

              Row(
                children: [
                  Text('Kitna Loan Cahiye?',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),
              Slider(
                activeColor: Colors.deepPurpleAccent,
                  value: rating,
                  min: 1000,
                  max: 12000,
                  onChanged: (newRating){
                    setState((){
                      rating = newRating ;
                    });
                  }

              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('1,000'),
                    Text('6,000'),
                    Text('12,000')

                  ],
                ),
              ),

              SizedBox(height: 10,),


              Row(
                children: [
                  Text('Kitne samay ke liye Cahiye?',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),



              Slider(
                  activeColor: Colors.deepPurpleAccent,
                  value: rating1,
                  min: 1,
                  max: 6,
                  onChanged: (newRating){
                    setState((){
                      rating1 = newRating ;
                    });
                  }

              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('1 mahina'),
                    Text('3 mahina'),
                    Text('6 mahina'),

                  ],
                ),
              ),


              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Byaaz Darr',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        Text('12%',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bakaya raashi',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        Text('6,090',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Masik EMI',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        Text('2,030',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),




              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: ()  {
                    Navigator.pushNamed(context, BankDetails.id);

                  }, child: Text('Amount Details dein'),
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
