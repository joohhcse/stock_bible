import 'package:flutter/material.dart';
import 'package:stock_bible/banner_ad_widget.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/guide2.png',
                width: 300,
                height: 250,
              ),
              Text(
                '"워런 버핏"의 분기별 포트폴리오를 확인!',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '세계 최고 투자자를 따라서 투자합니다!',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          )
      ),
    );
  }
}
