import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarViewState();
}

class _TabBarViewState extends State<TabBarScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
   _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar"),
        backgroundColor: Colors.blue,

      ),
 body:  Column(
   children: [
     TabBar(
       controller: _tabController,
       tabs: [
         Tab(icon: Icon(Icons.home),text: "Home",),
         Tab(icon: Icon(Icons.star),text: "Favorites",),
         Tab(icon: Icon(Icons.settings),text: "Settings",),
       ],
     ),
     Expanded(
       child: TabBarView(
         controller: _tabController,
         children: [
           Center(
             child: Text("This is Home Page"),
           ),
           Center(
             child: Text("This is Favorites Page"),
           ),
           Center(
             child: Text("This is Settings Page"),
           ),
         ],
       ),
     ),
   ],
 ),
    );
  }
}
