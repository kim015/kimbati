import 'package:flutter/material.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
                          image: AssetImage("assets/images/kind.png"))),
                ),
                const SizedBox(height: 50),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Engage With Your Audience",
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
                    "Recieve real time feedbavck from your friends.         Upload videos for voting and watch your popularity soar.                                                                                                  Win weekly prizes for being the top voted artist.",
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
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Onboarding4(),
                //     ),
                //     (route) => false);

                Navigator.pushNamedAndRemoveUntil(
                    context, "onboard4", (r) => false);
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
