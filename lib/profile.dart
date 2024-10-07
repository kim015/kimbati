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
    padding: EdgeInsets.only(left: 5,),
    
    child: CircleAvatar(
      radius: 80,
    ),
    ),
  
//  Positioned(
  //  bottom: 50,
    //right: 15,
    //child: CircleAvatar(
      //radius: 15,
     // backgroundColor: Colors.blue,
      //child: Icon(
       // Icons.edit,
      const SizedBox(height: 30,),
      const SizedBox(width: double.infinity,child: 
      Text(
        'Upload your profile picture',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),),
      const SizedBox(
        height: 40,
      ),
      const SizedBox(
        width: double.infinity,
        child: Text(
          'Choose a profile image that represents you.                 This will help others recognize you in the 10dollar community',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(
        height: 80,
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
       ), child: const Text('Continue')) ,
      ),
      const SizedBox(height: 20,),
      const SizedBox(
        width: double.infinity,
        child: Text(
          'Dont have image? skip it',
          textAlign: TextAlign.center,
        ),
      )
        ]
      ),
    )
  );
          
  }
}