import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CREATE",
      theme: ThemeData.light(),
      home: const HomePage(title: "CREATE APP"),
    );
  }
}
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Love();
  }
}
class Love extends StatefulWidget {
  const Love({super.key});

  @override
  State<Love> createState() => _LoveState();
}

class _LoveState extends State<Love> {
  String username= 'isiolaotan jesukimbati';  
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Center(
  child: Padding(padding:const EdgeInsets.symmetric(horizontal: 40.0),
  child:Form(
    key: _formKey,
  
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(height: 70,),
      Container(
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("assets/images/verify.png") )
        ),
      ),
      const SizedBox(height: 20,),
      const SizedBox(width: double.infinity,child: Text('Lets create your musical          identity.', textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
      const SizedBox(height: 5,),
      const SizedBox(width: double.infinity,
      child: Text(
        "Choose a unique username to get started.",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),),
      const SizedBox(width: double.infinity,
        child: Text("This will be your identity in the 10dollar community .",
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,),
        
      ),
      const SizedBox(height: 25,),
      const SizedBox(width: double.infinity,child: Text(
        'Username',
        textAlign: TextAlign.start,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),),
      TextFormField(
        validator: (value) {
          if (value != null && value.isEmpty){
            return"username is requiored";
          } else if(value!.length<3){
            return'username must be at least three characters long';
          }else if(value.length>15){
            return'username cannot exceed 15 characters';
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: 'Enter your unique username',
          prefixIcon: const Icon(Icons. person,size: 35,),
        ),
      ),
      const SizedBox(height: 30,),
      SizedBox(
        height: 40,
        width: 300,
        child: 
        ElevatedButton(onPressed:(){
          if(_formKey.currentState!.validate()){
          }
        } ,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))), child: const Text(
          'Continue',
          style: TextStyle(fontSize: 15),
          
        ),
        ),
      )
    ],
    
  ),
  ),

  ), 
) ,
    );
  }
}