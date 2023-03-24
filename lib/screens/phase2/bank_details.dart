import 'package:flutter/material.dart';
import 'package:rubex/screens/splash_phase2/bank_details_verify.dart';


class BankDetails extends StatefulWidget {

  static String id = 'bankDetails';





  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),

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
              Row(
                children: [
                  Text('6,000 aapke bank account',style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),

                ],
              ),

              Row(
                children: [
                  Text('Jama kiye jayenge!',style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Bank Name',style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                  ],
                ),
              ),

              SizedBox(height: 10,),



              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 45,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 275,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Bank Name'
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Account Number',style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 45,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 275,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Account Number'
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text('Branch address',style: TextStyle(fontSize:19, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 45,
                  child: Container(

                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Branch address'
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: flag,
                    onChanged: (bool? value) {
                      setState((){
                        flag = value!;

                      });
                    },

                  ),
                  Text('Issi account se hi loan wapas hoga!',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),





                ],
              ),



              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: ()  {

                    Navigator.pushNamed(context, BankDetailsVerify.id);

                  }, child: Text('Account mei transfer karein'),
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
