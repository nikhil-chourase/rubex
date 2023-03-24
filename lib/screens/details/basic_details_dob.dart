import 'package:flutter/material.dart';
import 'package:rubex/screens/details/basic_details_employment.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';



class BasicBday extends StatefulWidget {
  static String id = 'Basicbday';



  @override
  State<BasicBday> createState() => _BasicBdayState();
}

class _BasicBdayState extends State<BasicBday> {

  TextEditingController _dateController = TextEditingController();

  @override
  void initState(){

    super.initState();
    _dateController.text = '';

  }


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

              Row(
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                    ),
                  ),
                  Container(


                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),


                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),
              Row(
                children: [
                  Text('Apna janam din batayein',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ],
              ),

              SizedBox(height: 30,),

              Container(
                width: 230,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  width: 80,
                  child: TextField(


                    controller: _dateController,
                    decoration: InputDecoration(
                      hintText: 'DOB',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.calendar_month),
                    ),
                    onTap: () async{
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1999),
                          lastDate: DateTime(2101));

                      if(pickedDate!=null){

                        String formattedDate = DateFormat('yyyy-mm-dd').format(pickedDate);
                        setState(() {
                          _dateController.text  = formattedDate.toString();

                        });
                      }
                    },
                  ),
                ),
              ),

              SizedBox(height: 40,),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () async {

                    Navigator.pushNamed(context, BasicEmploy.id);

                  }, child: Text('Aage Badhein'),
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

