import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();
  
  List<String> photos =
      List<String>.filled(53, "images/frame_0_delay-0.04s.png");

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pos = 0;
  Timer? timer;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    //widget.photos[0] = 'images/frame_0_delay-0.04s.png';

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 184, 224),
      appBar: AppBar(
        title: Text('Timer'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80.0),
            Center(
              child: Image.asset(
                widget.photos[_pos],
                gaplessPlayback: true,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              '${counter ~/ (3600 * 15)}:${(counter % (3600 * 15)) ~/ (60 * 15)}:${((counter % (3600 * 15)) % (60 * 15)) ~/ 15}:${((counter % (3600 * 15)) % (60 * 15)) % 15}',
              style: TextStyle(
                color: Color.fromARGB(255, 4, 49, 85),
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Card(
                child: TextButton(
                    onPressed: () {
                      for (int i = 0; i < 53; i++) {
                        widget.photos[i] = 'images/frame_${i}_delay-0.04s.png';
                      }
                      timer = Timer.periodic(
                        Duration(milliseconds: 1),
                        (timer) {
                          setState(() {
                            _pos = (_pos + 1) % widget.photos.length;
                            counter++;
                          });
                        },
                      );
                    },
                    child: Text('Start')),
              ),
              SizedBox(
                width: 10.0,
              ),
              Card(
                child: TextButton(
                    onPressed: () {
                      timer?.cancel();
                      // setState(() {
                      // });
                    },
                    child: Text('Pause')),
              ),
              SizedBox(
                width: 10.0,
              ),
              Card(
                child: TextButton(
                    onPressed: () {
                      timer?.cancel();
                      setState(() {
                        _pos = 0;
                        counter = 0;
                      });
                    },
                    child: Text('Stop')),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
