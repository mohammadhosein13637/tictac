import 'package:flutter/material.dart';
import 'package:tictactoe/playing-screen.dart';

class UserAsk extends StatefulWidget {
  UserAsk({Key? key}) : super(key: key);

  @override
  State<UserAsk> createState() => _UserAskState();
}

class _UserAskState extends State<UserAsk> {
  String X = 'X';
  String O = 'O';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(65, 203, 191, 20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome To Tic - Tac - Toe',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'edu',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
            width: 20,
          ),
          Center(
            child: Text(
              'Select Your Symbol',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'edu',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
            width: 20,
          ),
          Center(
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PlayingScreen(),
                      settings: RouteSettings(arguments: X),
                    ),
                  );
                },
                child: const Text(
                  'Symbol X',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'edu',
                  ),
                )),
          ),
          SizedBox(
            height: 30,
            width: 20,
          ),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PlayingScreen(),
                    settings: RouteSettings(arguments: O),
                  ),
                );
              },
              child: const Text(
                'Symbol O',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'edu',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
