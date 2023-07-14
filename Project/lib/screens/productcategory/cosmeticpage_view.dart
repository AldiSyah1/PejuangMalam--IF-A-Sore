import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Kosmetik'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){}, 
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context)=><PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  title: Text("Profile"),
                )
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  title: Text("Setting"),
                )
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: ListTile(
                  title: Text("Log Out"),
                )
              )
            ]
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shadowColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network("https://tse1.mm.bing.net/th?id=OIP.IKUPqQzyy71xqPzQijmDjAHaHa&pid=Api&P=0&h=180"),
                      Text("Two Way Cake", style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network("https://tse3.mm.bing.net/th?id=OIP.QpA0ScQZiBKKjCg0rAdJ6QHaHa&pid=Api&P=0&h=180"),
                      Text("Eye Shadow", style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network("https://tse1.mm.bing.net/th?id=OIP.dgi89SVeev0rsCfQGBVYBwHaHa&pid=Api&P=0&h=180"),
                      Text("Serum", style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network("https://tse2.mm.bing.net/th?id=OIP.pfO4i3yrwtXBBCUO6eDnswHaHa&pid=Api&P=0&h=180"),
                      Text("Skin Cleanser", style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network("https://tse1.mm.bing.net/th?id=OIP.eorqjvnrkLNChEsxPHe0IAHaJY&pid=Api&P=0&h=180"),
                      Text("Lip Tint", style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)
                ),
              ),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network("https://tse2.mm.bing.net/th?id=OIP.Cgj2zl77-zHKHpNfLGCOOwAAAA&pid=Api&P=0&h=180"),
                      Text("Body Wash", style: new TextStyle(fontSize: 25.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
