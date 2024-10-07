import 'package:flutter/material.dart';

class Onboading2 extends StatefulWidget {
  const Onboading2({super.key});

  @override
  State<Onboading2> createState() => _Onboading2State();
}

class _Onboading2State extends State<Onboading2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  width: 500,
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/man.png"))),
                ),
                const SizedBox(height: 50),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Stake Your Claim",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Put your faith in your faith in your fellow musicians. Stake on videos you believe in and earn rewards when they succeed. Be part of the excitement and support the community",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 30, right: 30),
            child: FloatingActionButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Onboarding3(),
                //   ),
                // );

                Navigator.pushReplacementNamed(context, "onboard3");
              },
              backgroundColor: Colors.lightBlue,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.chevron_right,
                size: 35,
              ),
            )));
  }
}
