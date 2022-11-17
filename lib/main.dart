import 'package:flutter/material.dart';
import 'SideBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PostBruhh',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromRGBO(48, 47, 47, 1),
        backgroundColor: const Color.fromRGBO(87, 83, 83, 1),
        secondaryHeaderColor: Colors.white,
        fontFamily: 'ComicSans',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 189, 89, 1)),
          headline3: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 189, 89, 1)),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MyHomePage(title: 'PostBruh'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title, style: Theme.of(context).textTheme.headline1),
      ),
      drawer: SideBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Row(children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.green)),
                              Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.purple)),
                            ])),
                        Expanded(
                            flex: 1,
                            child: Text("Collections",
                                style: Theme.of(context).textTheme.headline3)),
                      ],
                    )),
                Expanded(flex: 3, child: Container(color: Colors.black)),
                Expanded(flex: 1, child: Container(color: Colors.purple)),
              ])),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
