import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String email = '';
  String password = '';
  String submittedEmail = '';
  String submittedPassword = '';
  var emailcontroller = TextEditingController();
  var pwcontroller = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70.0,
            ),
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Kellton Tech',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Card(
                color: Color.fromARGB(255, 237, 238, 241),
                margin: EdgeInsets.symmetric(horizontal: 60.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  child: Row(
                    children: <Widget>[
                      // Image(
                      //   image: AssetImage('images/message.png'),
                      //   height: 30.0,
                      //   width: 25.0,
                      // ),
                      Icon(Icons.email),
                      SizedBox(
                        width: 12.0,
                      ),
                      SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          controller: emailcontroller,
                        ),
                        width: 200.0,
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            Card(
                color: Color.fromARGB(255, 237, 238, 241),
                margin: EdgeInsets.symmetric(horizontal: 60.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(7.0, 5.0, 10.0, 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lock),
                      // Image(
                      //   image: AssetImage('images/lock.jpg'),
                      //   height: 40.0,
                      //   width: 40.0,
                      // ),
                      SizedBox(
                        width: 12.0,
                      ),
                      SizedBox(
                        child: TextField(
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          controller: pwcontroller,
                        ),
                        width: 210.0,
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 50.0,
            ),
            Card(
                child: TextButton(
              onPressed: () {
                setState(() {
                  submittedEmail = email;
                  submittedPassword = password;
                });
                emailcontroller.clear();
                pwcontroller.clear();
              },
              child: Text('SUBMIT'),
            )),
            Container(
              width: double
                  .infinity, /* This container helps to keep 
                                        other containers in horizontally center*/
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              submittedEmail,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              submittedPassword,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
