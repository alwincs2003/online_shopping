import 'package:flutter/material.dart';
import 'package:online_shopping/view/homescreen.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.network(
              "https://i.pinimg.com/564x/52/be/68/52be682e74555d100d7fe03fb6c3bdab.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size.fromHeight(60)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
                child: Text(
                  "Get start",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
