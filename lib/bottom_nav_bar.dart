import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex=0;
  PageController pageController=PageController();
  final List<Widget> _pages = const [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Favorites Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings Page', style: TextStyle(fontSize: 24))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Nav Bar"),backgroundColor: Colors.orange,),
      // body: _pages[currentIndex],
      body: PageView(
        controller: pageController,
        children: _pages,
        onPageChanged: (index){
          currentIndex=index;
          setState(() {

          });
        },
      ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          backgroundColor: Colors.grey,
          onTap: (index){
            currentIndex=index;
            setState(() {
              pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.bounceOut);
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.star),label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
          ],

    ),
    );
  }
}
