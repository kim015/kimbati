import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WELCOME PAGE"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/hope.png")),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  'Welcome to 10dollar!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Get ready to dive into the vibrant world of music!                      connect with fellow musicians, showcase your talent and          earn rewards for your creativity., ",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 30),
        child: FloatingActionButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Onboading2(),
            //   ),
            // );
            Navigator.pushNamed(context, "onboard2");
          },
          backgroundColor: Colors.lightBlue,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.chevron_right,
            size: 35,
          ),
        ),
      ),
    );
  }
}
