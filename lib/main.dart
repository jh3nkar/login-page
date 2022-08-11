import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: login());
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30.0,
              color: Colors.lightBlue[700],
            ),
            Text(
              'WELCOME!',
              style: TextStyle(
                  fontSize: 35.0,
                  fontFamily: 'Oswald',
                  fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Enter your Phone Number to Continue....',
                style: TextStyle(
                  fontFamily: 'Roboto Mono',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),),
                Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Container(
                    width: 300.0,
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '+91 | Phone number',
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(180, 60),
                    textStyle: TextStyle(fontSize: 20),
                    primary: Colors.lightBlue[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(55)),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'OTP sent successfully',
                        fontSize: 15.0,
                        textColor: Colors.black,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 2,
                        backgroundColor: Colors.white60);
                  },
                  child: Text(
                    'Send OTP',
                    style: TextStyle(color: Colors.black, fontFamily: 'Roboto Mono', fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              height: 30.0,
              color: Colors.lightBlue[700],
            ),
          ],
        ),
      ),
    );
  }
}
