import 'package:flutter/material.dart';
import 'package:flutter_login_signup/pages/curriculo_page.dart';
import 'package:flutter_login_signup/pages/dicas_page.dart';
import 'package:flutter_login_signup/pages/vagas_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    DicasPage(),
    VagasPage(),
    CurriculoPage()
     ];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb,
              color: _selectedIndex == 0 ? Colors.blue : null,
            ),
            title: Text(
              'Dicas',
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.blue : null,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _selectedIndex == 1 ? Colors.blue : null,
            ),
            title: Text(
              'Vagas',
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.blue : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
