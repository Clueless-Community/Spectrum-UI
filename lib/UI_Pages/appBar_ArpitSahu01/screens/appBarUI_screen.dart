import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget{
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'AppBarScreen',
      home: DefaultTabController(
        length: 4,
         child: Scaffold(
          appBar: AppBar(
            title: const Text('App Bar'),
            centerTitle: true,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_circle_rounded),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_rounded)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue,Colors.purpleAccent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.shopping_cart),text: 'Shop',),
                Tab(icon: Icon(Icons.accessibility_new_rounded),text: 'Profile',),
                Tab(icon: Icon(Icons.settings),text: 'Settings',)
              ],
            ),
          ),
           body: TabBarView(
             children: [
               buildPage('Home Page'),
               buildPage('Shop Page'),
               buildPage('Profile Page'),
               buildPage('Settings Page'),
             ],
           ),
        ),
      ),
    );
  }

  Widget buildPage(String text)=> Center(
    child: Text(text,style: TextStyle(fontSize:40,fontWeight: FontWeight.bold),),
  );
}