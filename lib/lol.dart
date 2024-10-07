import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile',
      theme: ThemeData.light(),
      home: const HomePage(title: "profile piv"),
    );
  }
}
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Profile();
  }
}
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: 
    Padding(padding: const EdgeInsets.symmetric(horizontal: 28.0),
    child: Column(
children: [
  const SizedBox(height: 200 ,),
  const Padding(
    padding: EdgeInsets.only(left: 5.0,),
    
    child: CircleAvatar(
      radius: 80,
      backgroundImage: AssetImage('assets/images/pretty.jpg'),
    ),
    ),
    const SizedBox(height: 30,),
    const SizedBox(
      width: double.infinity,
      child: Text(
        'Awesome!                                              Your profile picture looks great.',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    ),
      const SizedBox(
        height: 100,
      ),
      SizedBox(
        height:40,
        width: double.infinity,
        child:ElevatedButton(onPressed: (){},
       style:  ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        )
       ), child: const Text('Upload image')) ,
      ),

]
    ),
    ),
    );
  }}