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
      home: const MyHomePage(title: 'Makanan'),
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
                      Image.network("https://3.bp.blogspot.com/-OcgXY-tNsLc/WXgyxEjzQ3I/AAAAAAAAEl4/XIfbCwdkJZshw0H1quCljRKVeI5v8aVEwCLcBGAs/s1600/berasMaknyuss5kg.png",height: 210,width: 150),
                      Text("Beras", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse1.mm.bing.net/th?id=OIP.jYBhrGVOjSK47XJQMctUHAHaFt&pid=Api&P=0&h=180"),
                      Text("Mie Kuah", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse1.mm.bing.net/th?id=OIP.lg4UfDYL1vfo5PFlOnYY4wHaHa&pid=Api&P=0&h=180"),
                      Text("Minyak Goreng", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse4.mm.bing.net/th?id=OIP.9QPskhTp9yLLCI8zqK-UPQHaHa&pid=Api&P=0&h=180"),
                      Text("Gula", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse2.mm.bing.net/th?id=OIP.DoOT5b1l-lonZJ1TZUox9wHaHa&pid=Api&P=0&h=180"),
                      Text("Tepung Tapioka", style: new TextStyle(fontSize: 25.0))
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
                      Image.network("https://tse3.mm.bing.net/th?id=OIP.NazP8MN3U3VJMJSu5Hk4CAAAAA&pid=Api&P=0&h=180"),
                      Text("Gula", style: new TextStyle(fontSize: 25.0))
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
