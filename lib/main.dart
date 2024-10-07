import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MUSIC APP",
      theme: ThemeData.light(),
      home: const HomePage(title:"MUSIC DEMO HOMEPAGE"),

    );
  }
}
class HomePage extends StatelessWidget{
  final String title;
  const HomePage({super.key, required this.title});
  @override
  Widget build (BuildContext context) {
    return const Homescreen();
    
  }
}
class Homescreen extends StatefulWidget{
  const Homescreen({super.key});
  @override
  State<Homescreen> createState()=> Homescreenstate();
}
class Homescreenstate extends State<Homescreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("MUSIC  LOGIN PAGE"),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              height: 200,
              decoration: const BoxDecoration(
               image: DecorationImage(
                image: AssetImage("assets/images/proof.png", ),
              ),
           ),
           ),
           const SizedBox(width: double.infinity,child:
           Text("Sign up for 10dollar", 
           textAlign:TextAlign.center ,
           style: TextStyle(fontSize: 20, color: Colors.black87),
           ),
           ),
           const SizedBox(width: double.infinity,child:
           Text("join the vibrant music community and unlock exiting oppurtunities",
           textAlign:TextAlign.center ,
           ),),
           const SizedBox(height: 35,),
           const SizedBox(width: double.infinity,child: 
           Text("Email", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
              hintText: "example@gmail.com",
              prefixIcon: const Icon(Icons.mail),
        
            ),
          
        
           ),
           const SizedBox(height: 15,),
           const SizedBox(width: double.infinity,
           child: Text('Password', textAlign: TextAlign.start,),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility),
              hintText: "***************",
            ),
           ),
           const SizedBox(height: 15,),
           const SizedBox(width: double.infinity,child: 
           Text("Confirm password", textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold),),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
              prefixIcon: const Icon(Icons.lock),
              hintText: "****************",
              suffixIcon: const Icon(Icons.visibility),
            ),
           ),
        
          
           const SizedBox(height: 35,),
           SizedBox(width: double.infinity, height: 40, child: 
           ElevatedButton(onPressed: (){},
           style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue.shade200,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))), child:  const Text('continue'),),
           ),
           const SizedBox(height: 20,),
           const SizedBox(width: double.infinity,
           child: Text("Don't have an account?", textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),)
           
        
           
          ],
        ),
      ),
    );
  }
}

