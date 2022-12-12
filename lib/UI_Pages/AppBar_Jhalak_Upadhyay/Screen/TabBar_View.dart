import 'package:flutter/material.dart';

class TabDesign extends StatefulWidget {
  const TabDesign({Key? key}) : super(key: key);

  @override
  State<TabDesign> createState() => _TabDesignState();
}

class _TabDesignState extends State<TabDesign> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
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
                controller: _tabController,
                indicatorColor: Colors.blue,
                indicatorWeight: 3,
                unselectedLabelColor: Colors.black54,
                tabs: const [
                  Icon(Icons.home,size: 25,),
                  Icon(Icons.person,size: 25,),
                  Icon(Icons.favorite,size: 25,),
                  Icon(Icons.shopping_cart,size: 25,),
                  Icon(Icons.menu,size: 25,),
                ],
                labelColor: Colors.blue,
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Text('Home Tab',style: TextStyle(fontSize: 40.0),)),
                Center(child: Text('Profile Tab',style: TextStyle(fontSize: 40.0),),),
                Center(child: Text('Favourite',style: TextStyle(fontSize: 40.0),),),
                Center(child: Text('cart Tab',style: TextStyle(fontSize: 40.0),),),
                Center(child: Text('Menu Tab',style: TextStyle(fontSize: 40.0),),),
              ],
            ),
          ),
    );
  }
}
