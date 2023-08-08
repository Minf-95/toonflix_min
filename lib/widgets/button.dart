import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // 재활용 가능한 위젯을 만들기 위해서 프로퍼티를 만들어줌
  final String text;
  final Color bgColor;
  final Color textColor;

  // 생성자
  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  // 각각의 위젯들든 Build가 필요하다
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
