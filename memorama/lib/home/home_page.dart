import 'package:flutter/material.dart';
import 'package:memorama/shared/utils.dart' as utils;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: utils.blueColor,
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: const Icon(Icons.question_mark_rounded),
                  onPressed: () {
                    Navigator.pushNamed(context, 'info');
                  }),
            )
          ],
          // title: const Text('Memory Game'),
          backgroundColor: utils.blueColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(
                  height: 30,
                ),
                const Image(image: AssetImage('assets/images/Memories.png')),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'game',
                        arguments: {'level': 'easy'});
                  },
                  child: const Text('8',
                      style: TextStyle(
                          color: utils.whiteColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'game',
                          arguments: {'level': 'medium'});
                    },
                    child: const Text(
                      '10',
                      style: TextStyle(
                          color: utils.whiteColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'game',
                          arguments: {'level': 'hard'});
                    },
                    child: const Text('12',
                        style: TextStyle(
                            color: utils.whiteColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                const SizedBox(height: 20),
              ]),
            ),
          ),
        ));
  }
}
