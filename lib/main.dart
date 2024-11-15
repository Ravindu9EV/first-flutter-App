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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[600],

                child:Text('Hello World',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 40.0,

                        fontStyle: FontStyle.italic
                      )),
                ),
              ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),

                child:  Row(
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 254, 42, 86)
                        ),
                        onPressed: () { },
                        child: Text('All',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20.0,
                                color: Colors.white,
                                fontStyle: FontStyle.italic
                            )),
                      )
                    ),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // foreground
                        ),
                        onPressed: () { },
                        child: Text('Hip-Hop'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          // foreground
                        ),
                        onPressed: () { },
                        child: Text('Poscast'),
                      )
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.brown[600],
                width: 500.0,
                height: 100.0,
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.cyanAccent[400],
                width: 500.0,
                height: 100.0,
              ),
            )
          ],

        ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
