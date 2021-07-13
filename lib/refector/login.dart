import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        titleSpacing: 5,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          '로그인',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        shape: Border(bottom: BorderSide(color: Colors.black, width: 0.1)),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                SizedBox(
                  height: 100,
                  child: Text(
                    '          환영합니다!\n우리 로그인을 해볼까요?',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 52,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'ID',
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  height: 52,
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 18)),

                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.black,
                    child:
                    Icon(Icons.face_rounded),

                  ),
                )
              ])
            ],
          ))
        ],
      ),
    );
  }
}
