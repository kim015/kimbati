import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Verify Email" ,
      theme: ThemeData.light(),
      home: const HomePage(title: 'Verify email'),
    );
  }
}
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Verify();
  }
}
class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding:  const EdgeInsets.symmetric( horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 70,),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Verify.png"))
            ),
          ),
          const SizedBox(height: 15,),
          const SizedBox(width: double.infinity, child: Text("Verify Email With OTP?",textAlign:TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 5,), 
          const SizedBox(width: double.infinity,
          child:
          Text("please enter the email adress associated with your account. we'll send you an Otp to reset your password.", textAlign: TextAlign.center,),),
          const SizedBox(height: 35,),
          const SizedBox(width: double.infinity,child:
          Text("Six OTP", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),),),
          TextField(decoration: InputDecoration(
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(12)
            ),
            hintText: "048820",
          ),

          ),
          const SizedBox(height: 100,),
          SizedBox(width: double.infinity,height: 40,
          child: ElevatedButton(onPressed: (){},
          style:  ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue.shade200,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child:const Text('continue')),),
          const SizedBox(height: 20,),
          const SizedBox(width: double.infinity,child: Text("Don't recieve OTP? resend",textAlign: TextAlign.center,),)
        ],
      ) ,),
    );
  }
}