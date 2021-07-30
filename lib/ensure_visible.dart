import 'package:flutter/material.dart';
import 'dart:math' as math;

class EnsureVisible extends StatefulWidget {
  const EnsureVisible({
    Key key,
  }) : super(key: key);

  @override
  _EnsureVisibleState createState() => _EnsureVisibleState();
}

class _EnsureVisibleState extends State<EnsureVisible> {
  final ScrollController _controller = ScrollController();
  final int totalLength = 50;
  List<GlobalKey> _globalKeys;

  @override
  initState() {
    _globalKeys = List.generate(totalLength, (index) => GlobalKey());
    super.initState();
  }

  _ensureVisible(int index) {
    if (Scrollable.of(context)?.mounted ?? false) {
      print('here');
      Scrollable.ensureVisible(_globalKeys[index].currentContext);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _ensureVisible(5),
        child: Icon(Icons.arrow_upward),
      ),
      appBar: AppBar(title: Text('this is a test')),
      body: SafeArea(
        child: CustomScrollView(
          controller: _controller,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(
                        50,
                        (index) => Container(
                          key: _globalKeys[index],
                          height: 54.0 + math.Random().nextDouble() * 54,
                          color: Color((math.Random().nextDouble() * 0xFFFFFF)
                                  .toInt())
                              .withOpacity(1.0),
                          child: Text(
                            'this is $index',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          ElevatedButton(
                            child: Text('go to'),
                            onPressed: () => _ensureVisible(7),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
