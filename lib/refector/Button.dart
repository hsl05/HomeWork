
import 'package:flutter/material.dart';


class Button extends StatefulWidget {
  //빨간색으로 뜨는 이유는 null 값(아무것도 없을떄)이라고 그 값이 필요하다고 뜨는거에요
  //그래서 보통 두가지 방법으로 줄 수 있는데 required 랑 ?(Null 을 준다) 두개로 줄 수 있어요
  // 아무튼 이런느낌으로 추가해서 변경 해 주면 돼요
  /// required 뭐시기 이런식으로 주면 반드시 그 값을 줘야한다는 의미
  const Button({Key? key, required this.title, required this.onPressed, required this.color})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color color;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      // 여기서 widget.뭐시기 이렇게 적는데 이건
      /// StatefulWidget 이것 때문에 이렇게 적는거에요
      // 만약 StatelessWidget 이면 widget을 빼고 적습니다.
      child: Text(widget.title,style: TextStyle(color: widget.color),),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey),),
      onPressed: widget.onPressed,
    );
  }
}
