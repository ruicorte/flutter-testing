import 'package:flutter/material.dart';
import 'package:measured_size/measured_size.dart';
import 'dart:math' as math;

class ScrollToPosition extends StatefulWidget {
  const ScrollToPosition({
    Key key,
  }) : super(key: key);

  @override
  _ScrollToPositionState createState() => _ScrollToPositionState();
}

class _ScrollToPositionState extends State<ScrollToPosition> {
  final ScrollController _controller = ScrollController();
  final int totalLength = 50;
  List<double> _heights;

  @override
  initState() {
    _heights = List.generate(totalLength, (index) => 0);
    super.initState();
  }

  _animateTo(int index) {
    if (index < totalLength && _heights[index] < _controller.position.pixels) {
      double _sumPrevious = _heights
          .sublist(0, index)
          .reduce((value, element) => value + element);

      _controller.animateTo(_sumPrevious,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _animateTo(5),
        child: Icon(Icons.arrow_upward),
      ),
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
                        (index) => MeasuredSize(
                          onChange: (Size size) {
                            _heights[index] = size.height;
                            print(_heights);
                          },
                          child: Container(
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
                  ),
                  Container(
                      width: double.infinity,
                      color: Colors.orange,
                      child: Row(
                        children: [
                          ElevatedButton(
                            child: Text('go to'),
                            onPressed: () => _animateTo(50),
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
