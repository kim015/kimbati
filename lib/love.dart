import 'package:flutter/material.dart';
void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Welcome page" ,
      theme: ThemeData.light(),
      home:const HomePage(title: "WELCOME PAGE"),
    );
  }
}
class HomePage extends StatelessWidget{
  final String title;
  const HomePage ({super.key,required this.title});
  @override
  Widget build(BuildContext context) {
   return const Mother();
  }
}
class Mother extends StatefulWidget{
  const Mother({super.key});

@override
  State<Mother>createState()=> MotherState();}
class MotherState extends State<Mother>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text("WELCOME PAGE"),
  centerTitle: true,
),
body: Padding(
padding: const EdgeInsets.symmetric( horizontal: 28.0),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 400,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/hope.png")),

        ),
      ),
      const SizedBox(height: 1,),
      const SizedBox(width: double.infinity, child:
      Text('Welcome to 10dollar!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,)
      ),
      const SizedBox(height: 15,),
      const SizedBox(width: double.infinity,
      child: Text("Get ready to dive into the vibrant world of music!                      connect with fellow musicians, showcase your talent and          earn rewards for your creativity., ",
      textAlign: TextAlign.center,),)
    ],
   ),
),

floatingActionButton: Padding(
  padding: const EdgeInsets.only(bottom: 30, right: 30),
  child: FloatingActionButton(onPressed: (){},
  backgroundColor: Colors.lightBlue,
  shape: const CircleBorder(),
  child: 
  const Icon(Icons.chevron_right, size: 35,),
  
  ),
),
    ) ;
  }

  }
