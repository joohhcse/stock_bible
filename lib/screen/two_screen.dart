import 'package:flutter/material.dart';
import 'package:stock_bible/banner_ad_widget.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
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
                'assets/img/guide.png',
                width: 300,
                height: 200,
              ),
              Text(
                'https://13f.info/',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '위의 링크에서 "Warren Buffett"을 검색합니다.',
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
