import 'package:flutter/material.dart';
import 'package:m_bank/login/LoginButtonWidget.dart';
//import 'package:m_bank/login/service_locator.dart';
//import 'package:m_bank/login/LocalAuthenticationService.dart';

void main() {
//  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M Bank',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'M Bank'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//  final LocalAuthenticationService _localAuth = locator<LocalAuthenticationService>();
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        leading: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Icon(Icons.add),
//        ),
//        title: Text('Local Authentication'),
//      ),
//      body: Center(
//        child: RaisedButton(
//          child: Text('authenticate'),
//          onPressed: _localAuth.authenticate,
//        ),
//      ),
//    );
//  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                child: TextField(
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      labelText: "User ID",
                      icon: Icon(Icons.person),
                      counterText: "",
                    ),
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 1
                    )
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                    enableSuggestions: false,
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    maxLength: 20,
                    decoration: InputDecoration(
                      labelText: "Password",
                      icon: Icon(Icons.person),
                      counterText: "",
                    ),
                    style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 1
                    )
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: LoginButtonWidget(),
                ),
              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
//        persistentFooterButtons: <Widget>[LoginButtonWidget()]
    );
  }
}
