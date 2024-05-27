import 'package:flutter/material.dart';
import 'package:stock_bible/screen/one_screen.dart';
import 'package:stock_bible/screen/two_screen.dart';
import 'package:stock_bible/screen/three_screen.dart';
import 'package:stock_bible/screen/four_screen.dart';
import 'package:stock_bible/banner_ad_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    OneScreen(),  //init home screen
    TwoScreen(),
    ThreeScreen(),
    FourScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pop(context); // Close the drawer
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주식의 정석'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          padding: EdgeInsets.fromLTRB(0.0, 32.0, 0.0, 0.0),
          children: <Widget>[
            // Drawer 상단 꾸미는 부분
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text(
            //     'Menu',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 24,
            //     ),
            //   ),
            // ),
            ListTile(
              // leading: Icon(Icons.timeline_outlined),
              // leading: Icon(Icons.show_chart_outlined),
              leading: Icon(Icons.trending_up_outlined),
              title: Text('Step 1.'),
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: Icon(Icons.trending_up_outlined),
              title: Text('Step 2.'),
              onTap: () => _onItemTapped(1),
              // onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: Icon(Icons.trending_up_outlined),
              title: Text('Step 3.'),
              onTap: () => _onItemTapped(2),
            ),
            ListTile(
              leading: Icon(Icons.trending_up_outlined),
              title: Text('Step 4.'),
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      // body: _screens[_selectedIndex],
      body: Column(
        children: [
          Expanded(
            child: _screens[_selectedIndex],
          ),
          BannerAdWidget(), //admop
        ],
      ),
    );
  }
}
