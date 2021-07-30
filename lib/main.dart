import 'package:flutter/material.dart';
import 'package:focus_forms/ensure_visible.dart';
import 'package:focus_forms/scroll_to_position.dart';
// import 'package:focus_forms/custom_scroll.dart';
// import 'package:focus_forms/form_screen.dart';
// import 'package:focus_forms/scroll_to_position.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: FormScreen(),

      home: ScrollToPosition(),
      // home: EnsureVisible(),
      // home: ScrollablePositionedListPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({@required this.title});
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() => setState(() => _counter++);

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
