import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var user = "kannan";
    var currentIndex=1;
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print("back button clicked");
            },
            icon: Icon(Icons.arrow_back)),*/

        title: Text(user),
        actions: [
          IconButton(
              onPressed: () {
                print("search button click");
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("menu button click");
              },
              icon: Icon(Icons.menu)),
        ],
        flexibleSpace: SafeArea(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 44.0,
                ))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: Container(
            color: Colors.blueAccent,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text(
                "Welcome to KannanPVM007 Demo tutorial",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(child: Text("helooooooo.....")),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 50.0,
        child: IconButton(onPressed: () {}, icon: Icon(Icons.open_in_full)),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Kannan"),
            accountEmail: Text("kannanpvm007@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("KA"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("NI"),
              ),

            ]
          ),
          ListTile(
            title: Text("Java"),
            leading: Icon(Icons.coffee),
          ),
          Divider(height: 0.1,),

          ListTile(
            title: Text("Kotlin"),
            leading: Icon(Icons.flag),
          ),
          Divider(height: 0.1,),
          ListTile(
            title: Text("Flutter"),
            leading: Icon(Icons.arrow_back),
          ),
          Divider(height: 0.1,),

        ]),
      ),
      persistentFooterButtons: [
        RaisedButton(onPressed: (){},child: Icon(Icons.report),color: Colors.red, ),
        ElevatedButton(onPressed: (){}, child: Icon(Icons.share),),],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem( icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem( icon: Icon(Icons.school),label: 'My learning'),
          BottomNavigationBarItem( icon: Icon(Icons.account_circle),label: 'Account'),
        ],
        onTap: (int  index){
          print("ontap bottom itms--->$index");
          currentIndex=index;
        },
      ),


    );
  }
}
