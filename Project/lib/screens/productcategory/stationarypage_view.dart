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
      home: const MyHomePage(title: 'Stationary'),
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
                      Image.network("https://tse3.mm.bing.net/th?id=OIP.yn9tVHjmYVXLzHHKE0EVcwHaFZ&pid=Api&P=0&h=180"),
                      Text("Buku Tulis", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse3.mm.bing.net/th?id=OIP.jvhHKuxCMw7pHZkF25wYswHaHa&pid=Api&P=0&h=180"),
                      Text("Pulpen", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse3.mm.bing.net/th?id=OIP.uPW903N8XqAhIP9Qb7g6XQAAAA&pid=Api&P=0&h=180"),
                      Text("Kertas HVS:A4", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse4.mm.bing.net/th?id=OIP.CqnjsAKJLqglvrH_OoG-sgHaFj&pid=Api&P=0&h=180"),
                      Text("Stapler", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse2.mm.bing.net/th?id=OIP.zY-emaQHwZP3t4QQs5vNdwHaIr&pid=Api&P=0&h=180"),
                      Text("Sticky Note", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse1.mm.bing.net/th?id=OIP.RfIRktEuay6IDw_Q5ASssAHaHa&pid=Api&P=0&h=180"),
                      Text("Stabilo", style: new TextStyle(fontSize: 25.0))
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
