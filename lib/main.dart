import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rubex/screens/details/basic_details_dob.dart';
import 'package:rubex/screens/details/basic_details_employment.dart';
import 'package:rubex/screens/details/basic_details_incom.dart';
import 'package:rubex/screens/details/basic_details_name.dart';
import 'package:rubex/screens/home_screen.dart';
import 'package:rubex/screens/home_screen_loan_approved.dart';
import 'package:rubex/screens/login_screen.dart';
import 'package:rubex/screens/menu_options.dart';
import 'package:rubex/screens/otp_verification.dart';
import 'package:rubex/screens/phase2/bank_details.dart';
import 'package:rubex/screens/phase2/credit_eligibilty.dart';
import 'package:rubex/screens/phase2/employer_verification.dart';
import 'package:rubex/screens/phase2/loan_amount.dart';
import 'package:rubex/screens/splash_phase2/bank_details_verified.dart';
import 'package:rubex/screens/splash_phase2/bank_details_verify.dart';
import 'package:rubex/screens/splash_phase2/loan_account_transferring.dart';
import 'package:rubex/screens/splash_phase2/loan_account_transferring_success.dart';
import 'package:rubex/splash_screen.dart';
import 'package:rubex/splash_screen2.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,

      routes: {


        SplashScreen.id :(context)=> SplashScreen(),
        LoginScreen.id :(context)=> LoginScreen(),
        HomeScreen.id :(context)=> HomeScreen(),
        OtpScreen.id :(context)=> OtpScreen(),
        BasicName.id :(context)=> BasicName(),
        BasicBday.id :(context)=> BasicBday(),
        BasicEmploy.id :(context)=> BasicEmploy(),
        BasicIncome.id :(context)=> BasicIncome(),
        MenuOptions.id :(context)=> MenuOptions(),
        EmployerVerify.id :(context)=> EmployerVerify(),
        CreditEligibilty.id :(context)=> CreditEligibilty(),
        LoanAmountFinal.id :(context)=> LoanAmountFinal(),
        BankDetails.id :(context)=> BankDetails(),
        HomeScreenLoanApproved.id :(context)=> HomeScreenLoanApproved(),
        SplashScreen2.id :(context)=> SplashScreen2(),
        BankDetailsVerified.id :(context)=> BankDetailsVerified(),
        BankDetailsVerify.id :(context)=> BankDetailsVerify(),
        LoanAccountTransfer.id :(context)=> LoanAccountTransfer(),
        LoanAccountTransferringSuccess.id : (context) => LoanAccountTransferringSuccess(),

















      },
    );
  }
}
