import 'package:flutter/material.dart';

class TabDesign extends StatefulWidget {
  const TabDesign({Key? key}) : super(key: key);

  @override
  State<TabDesign> createState() => _TabDesignState();
}

class _TabDesignState extends State<TabDesign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            backgroundColor: Colors.purple,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text('App Bar'),
              titleTextStyle: const TextStyle(
                color: Colors.black,
              ),
              actions: [
                IconButton(icon: Icon(Icons.search),onPressed: (){},color: Colors.black54),
              ],
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs: [
                  IconButton(icon:  Icon(Icons.home),onPressed: (){
                    setState((){
                    });
                  },color:Colors.black54,),
                  IconButton(icon:  Icon(Icons.person),onPressed: (){
                    setState((){
                    });
                  },color:Colors.black54),
                  IconButton(icon:  Icon(Icons.favorite),onPressed: (){
                    setState((){
                    });
                  },color:Colors.black54),
                  IconButton(icon:  Icon(Icons.shopping_cart_sharp),onPressed: (){
                    setState((){
                    });
                  },color:Colors.black54),
                  IconButton(icon:  Icon(Icons.menu),onPressed: (){ setState((){
                  });},color:Colors.black54),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Center(child: Text('Home Tab'),),
                Center(child: Text('Profile Tab'),),
                Center(child: Text('Likes Tab'),),
                Center(child: Text('cart Tab'),),
                Center(child: Text('Menu Tab'),),
              ],
            ),
          ),
        ),
    );
  }
}
