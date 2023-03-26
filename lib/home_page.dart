import 'package:flutter/material.dart';
import 'package:mi_card/dice_page.dart';
import 'package:mi_card/xylophone_page.dart';
import 'package:mi_card/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text('Flutter Angela'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/mhd.jpg'),
              ),
              const Text(
                'Hyungdoo Moon',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                  height: 5,
                  thickness: 1,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      '010-9999-9999',
                      style:
                          TextStyle(color: Colors.teal.shade900, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                // border: Border.all(width: 3),
                // color: Colors.white),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'hyungdoo.moon@gmail.com',
                      style:
                          TextStyle(color: Colors.teal.shade900, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Row(
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.red,
                        child: const Icon(Icons.rectangle),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const DicePage();
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        backgroundColor: Colors.orange,
                        child: const Icon(Icons.music_note),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const XylophonePage();
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        backgroundColor: Colors.yellow,
                        child: const Icon(Icons.quiz),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const QuizPage();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
