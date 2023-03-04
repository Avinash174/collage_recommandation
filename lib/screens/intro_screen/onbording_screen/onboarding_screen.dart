import 'package:collage_recommandation/screens/homepage/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: PageView(
          children: [
            Container(
              child: Center(
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_j2rjqphu.json'),
              ),
            ),
            Container(
              child: Center(
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_HpFqiS.json'),
              ),
            ),
            Container(
              child: Center(
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_crzbc9ev.json'),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Text('SKIP'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('NEXT'),
            ),
          ],
        ),
      ),
    );
  }
}
