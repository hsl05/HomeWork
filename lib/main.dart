import 'package:flutter/material.dart';
import 'refector/Button.dart';
import 'refector/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerExample(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Homework'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            //<Widget> 이거 굳이 안 넣어도 돼요
            // <Widget> 넣는 이유가 해당 children 안에 Widget이 아니면 오류 뜨게 할라고 작성하는건데
            // 지금 상황에서 오히려 <Widget> 을 넣게 되면 잘못하다 Widget아닌걸 넣게 되어버려서 오류가
            // 발생할수도 있어서 굳이 안넣는거 추천드려요
            children: [
              Column(
                children: [
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),

                  // TextButton(
                  //   child: Text('1' ,style: TextStyle(color: Colors.white,)),
                  //   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey),),
                  //   onPressed: () { },
                  // ), 얘를 리펙토링 해 보겠습니다.
                  // 1. 일단 Button.dart 파일을 들고와야해요
                  // 2. 해당 다트 파일에 명명한 클래스를 적어줘요
                  // 3. 누르면 저런식으로 자동으로 뜨는데 두개를 한번 지워볼께요
                  // 저런식으로 required 붙은 메서드를 들고와야해요
                  // 4. 이런식으로 사용할때 아까 위에 적은 final String title; 을 사용해요
                  // 이런식으로 똑같이 나오게 되는데 글씨가 파란색이죠
                  // 저렇게 한꺼번에 변경도 가능하고 혹시라도 저 색도 각각 스타일 지정하고 싶으면

                  Button(
                    title: '안녕',
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  //이 버튼 클래스를 사용해서 밑에 텍스트 버튼 전부 리펙토링 해보시고요

                  // 휴대폰 기종마다 크기, 넓이 다 다르겠죠, padding을 써버리면 배열에 오류가 생길 수 있어요
                  // 720x1280 기종이랑 1180x1480 기종 등등 화면 크기가 다 달라서 padding 보단 SizedBox로
                  // 칸 넓히는 연습을 하는거 추천드려요
                  // 그리고 넓이나 높이는 4의 배수가 가장 아름답게 배치 됩니다
                  SizedBox(width: 48),

                  Button(
                    title: '하이',
                    onPressed: () {},
                    color: Colors.white,
                  ),

                  //칸 벌릴때는 SizedBox를 사용하는 습관을 들이는거 추천드립니다.
                  SizedBox(width: 48),

                  Button(
                    title: '3',
                    onPressed: (){},
                    color: Colors.white,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(40)),
                  TextButton(
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: Text('1',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                    onPressed: () {},
                  ),
                  Padding(padding: EdgeInsets.all(100)),
                  TextButton(
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: Text('3',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
