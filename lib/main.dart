import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

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
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 189, 89, 1)),
          headline3: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 189, 89, 1)),
          headline5: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 189, 89, 1)),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MyHomePage(title: 'postbruh'),
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

const List<String> list = <String>['GET', 'POST', 'DELETE', 'PUT'];

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late TextEditingController _controller;
  String dropdownValue = list.first;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   backgroundColor: Theme.of(context).primaryColor,
      //   title: Row(
      //     children: [
      //       Text(widget.title, style: Theme.of(context).textTheme.headline1),
      //       const SizedBox(
      //         height: 50,
      //         width: 30,
      //         child: RiveAnimation.asset(
      //           'assets/hoodie.riv',
      //           fit: BoxFit.cover,
      //         ),
      //       )
      //     ],
      //   ),
      //   actions: const [],
      // ),
      // drawer: SideBar(),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.title,
                                  style: Theme.of(context).textTheme.headline1),
                              const SizedBox(
                                height: 50,
                                width: 30,
                                child: RiveAnimation.asset(
                                  'assets/hoodie.riv',
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Row(children: [
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.folder,
                                        color: Color.fromRGBO(255, 189, 89, 1)),
                                    onPressed: () => {},
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.add,
                                        color: Color.fromRGBO(255, 189, 89, 1)),
                                    onPressed: () => {},
                                  )),
                            ])),
                        Expanded(
                            flex: 1,
                            child: Center(
                                child: Text("Collections",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3))),
                      ],
                    )),
                Expanded(flex: 3, child: Container(color: Colors.black)),
                Expanded(flex: 1, child: Container(color: Colors.purple)),
              ])),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "current_collection_name",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                    Text(
                                      "current_request_name",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    DropdownButton<String>(
                                      value: dropdownValue,
                                      icon: const Icon(Icons.arrow_downward),
                                      elevation: 16,
                                      style: const TextStyle(
                                          color:
                                              Color.fromRGBO(255, 189, 89, 1)),
                                      underline: Container(
                                          height: 0, color: Colors.transparent),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                        setState(() {
                                          dropdownValue = value!;
                                        });
                                      },
                                      items: list.map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                    const Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Input url...',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(20.0),
                                    backgroundColor: Colors.black,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Save ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3),
                                      const Icon(Icons.save,
                                          color:
                                              Color.fromRGBO(255, 189, 89, 1))
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(20.0),
                                    backgroundColor: Colors.black,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Send ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3),
                                      const Icon(Icons.send,
                                          color:
                                              Color.fromRGBO(255, 189, 89, 1)),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ))),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "request",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "body",
                                  ))
                            ],
                          ),
                          const Expanded(
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.top,
                              maxLines: null,
                              expands: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Input url...',
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "reponse",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "body",
                                ))
                          ],
                        ),
                        const Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.top,
                            maxLines: null,
                            expands: true,
                            toolbarOptions: ToolbarOptions(
                              copy: true,
                              cut: true,
                              paste: false,
                              selectAll: true,
                            ),
                            decoration: InputDecoration(
                              hintText: 'response body',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
