import 'package:flutter/material.dart';
import 'package:stock_bible/banner_ad_widget.dart';

class FourScreen extends StatefulWidget {
  const FourScreen({super.key});

  @override
  State<FourScreen> createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
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
                'assets/img/buffett.png',
                width: 300,
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '↗ 여러분의 성투를 응원합니다! ↗',
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
