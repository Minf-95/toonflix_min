import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App()); // runApp은 앱을 실행시키는 역할을 하고, Widget을 인자로 받는다.
}

class App extends StatelessWidget {
  const App({super.key});

  /* runApp에 전달할 위젯을 정의하는데, Class를 Widget으로 바꿔주기 위해 가장 기초적이고 쉬운 Stateless 위젯을 상속 받는다.
  StatelessWidget를 상속 받으면 StatelessWidget.build라고 불리는 메소드를 구현해야한다. 
  모든 Widget은 build 메소드를 구현해야 한다.
  Build메서드는 UI를 구현하는거랑 똑같다.

  Stateless 위젯은 상태가 없는 위젯이다. 즉, 한번 그려지면 그대로 있는 위젯이다.
  그렇기 때문에, 화면을 다시 그리고 싶을 때는 다시 그리라고 명령을 내려야 한다.
  그 명령을 내리는 방법은 setState()를 호출하는 것이다.
  그러나, 이번 예제에서는 화면을 다시 그리는 것이 아니라, 화면을 새로 그리는 것이기 때문에 setState()를 사용하지 않는다.
  */

  @override
  Widget build(BuildContext context) {
    /*
      여기에서 UI를 구현하는데, material(Android)로 할지 cupertino(Apple)로 할지 정할 수 있다.
      return MaterialApp
      return CupertinoApp

      여기에서 UI시작점을 정해줘야한다.
      Flutter는 Google에서 만든 프레임워크이기 때문에, MaterialApp이 괜찮을 것 이다.
      MaterialApp으로 해도 구글 느낌을 빼는 데 그렇게 오래걸리진 않는다. 
    */

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Hey, Selena',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 18),
                    ),
                  ],
                )
              ]),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                    fontSize: 22, color: Colors.white.withOpacity(0.8)),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5 194 482',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "Transfer",
                      bgColor: Colors.amber,
                      textColor: Colors.black),
                  Button(
                      text: "Transfer",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
                inInverted: false,
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '7 875',
                  icon: Icons.euro_rounded,
                  inInverted: true,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -40),
                child: const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_rounded,
                  inInverted: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
