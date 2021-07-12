import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Homework'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple
                  ),
                  padding: EdgeInsets.all(15),

                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                TextButton(
                  child: Text('1' ,style: TextStyle(color: Colors.white,)),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey),),
                  onPressed: () { },
                ),
                Padding(padding: EdgeInsets.all(25)),
                TextButton(
                  child: Text('2' ,style: TextStyle(color: Colors.white,)),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () { },
                ),
                Padding(padding: EdgeInsets.all(25)),
                TextButton(
                  child: Text('3' ,style: TextStyle(color: Colors.white,)),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () { },
                ),
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(40)),
                TextButton(
                  child: SizedBox(height: 40, width: 200,
                  child: Text('1' ,style: TextStyle(color: Colors.white,)),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () { },
                ),
                Padding(padding: EdgeInsets.all(100)),
                TextButton(
                  child: SizedBox(height: 40, width: 200,
                    child: Text('3' ,style: TextStyle(color: Colors.white,)),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () { },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
