import 'package:flutter/material.dart';

import '../../base/routes.dart';

class DescriptionViewWidget extends StatelessWidget {
  const DescriptionViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    'Game Play',
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'You will receive 5 free plays a day and you can purchase additional plays that never expire. Questions are progressive, increasing in difficulty and value from easy to hard and 1 to 10 points.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(child: Image.asset('assets/images/image1.png'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    'Score',
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'If you answer all the questions in less than 60 seconds, then your remaining time is a multiplier against your question points. But be careful: wrong answers decrease your time multiplier.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(child: Image.asset('assets/images/image2.png'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      r'Your best score during each 24 hour game period will appear on the Leaderboard. The highest eligible score each day will be the winner of the cash prize. Each days prize pool will increase $0.01 for each game played, but we will guarantee the first $100.00.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(child: Image.asset('assets/images/image3.png'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    'Claim prize',
                    style: TextStyle(fontSize: 30, color: Colors.purple),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'If you are good enough to achieve a winning score, then you will win the cash prize pool for the day. Go to the Claim Prize screen and send us your info and we will transfer your winnings to your PayPal account. Note: you can only win once every 30 days.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Expanded(child: Image.asset('assets/images/image4.png')),
                  SizedBox(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Color.fromARGB(255, 121, 21, 139)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 84, 4, 98))))),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutes.homepage);
                      },
                      child: const Text("GO TO HOMEPAGE"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
