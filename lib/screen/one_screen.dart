import 'package:flutter/material.dart';
import 'package:stock_bible/banner_ad_widget.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Intro.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '누구도 반박할 수 없는 올바른 투자스킬.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '세계최고 투자방법을 알려드립니다!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        )
      ),
    );
  }
}
