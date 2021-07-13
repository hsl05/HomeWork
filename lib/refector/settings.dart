import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.check, color: Colors.white))
        ],
        titleSpacing: 5,
        backgroundColor: Colors.deepPurple,
        title: Text('', style: TextStyle(color: Colors.black)),
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
                  Text('설정 화면 입니다.', style: TextStyle(color: Colors.black),)
                ],
              )
          )
        ],
      ),
    );
  }
}
