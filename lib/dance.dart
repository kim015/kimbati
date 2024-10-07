import 'package:flutter/material.dart';


void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Discover page",
      theme: ThemeData.light(),
      home: const HomePage(title: " Discover page"),
    );
  }
}
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title });

  @override
  Widget build(BuildContext context) {
    return const Discover();
  }
}
class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding:
        const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200,),
               Container(
                width: 500,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/tech.png"))
                  ),
                ),
            
            
            const SizedBox(height:12),
            const SizedBox(width: double.infinity,child: 
            Text("Discover & Share Your Music",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),

            ),),
            const SizedBox(height: 10,),
            const SizedBox(width: double.infinity,child: 
            Text("Explore a diverse range of musical styles and genres. Share your own tracks, videos and updates with the community to gain exposure and feedback",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),),),



          ],
        ),
         ),
    
      ),
      floatingActionButton:Padding(padding: const EdgeInsets.only(bottom: 30, right: 30),
child: FloatingActionButton(onPressed: (){},
backgroundColor: Colors.lightBlue,
shape: const CircleBorder(), child: 
const Icon(Icons.chevron_right, size: 35,),))
    );
  }
}
