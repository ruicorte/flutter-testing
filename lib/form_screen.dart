import 'package:flutter/material.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class FormScreen extends StatefulWidget {
  const FormScreen();

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<FocusNode> _focusNodes = [];

  @override
  initState() {
    _focusNodes.addAll(List.generate(4, (idx) => FocusNode()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // String _requiredValidator(dynamic value, int idx) {
    //   if ((value ?? '').isEmpty) {
    //     return "un perdedor! on $idx";
    //   }
    //   return null;
    // }

    // int _idx = 0;
    // // final PageController _controller = PageController();

    // final controller = AutoScrollController();
    /* final _widgets = [
      TextFormField(
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
      TextFormField(
        key: ValueKey(_idx++),
        decoration: InputDecoration(
          labelText: 'field $_idx',
        ),
        validator: (value) => _requiredValidator(value, _idx),
      ),
    ]; */

    // final ItemScrollController _scrollController = ItemScrollController();
    // final ScrollController _scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: Text('this is the appbar'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Text('here'),
/*                   ScrollablePositionedList.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemScrollController: _scrollController,
                    itemCount: 100,
                    itemBuilder: (context, index) => TextFormField(
                      decoration: InputDecoration(
                        labelText: 'field $index',
                      ),
                      validator: (value) => _requiredValidator(value, index),
                    ),
                  ),
 */
                    /* Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => _scrollController.scrollTo(
                          index: 1,
                          duration: Duration(seconds: 1),
                        ),
                        child: Text('1'),
                      ),
                      ElevatedButton(
                        onPressed: () => _scrollController.scrollTo(
                          index: 45,
                          duration: Duration(seconds: 1),
                        ),
                        child: Text('45'),
                      ),
                      ElevatedButton(
                        onPressed: () => _scrollController.scrollTo(
                          index: 50,
                          duration: Duration(seconds: 1),
                        ),
                        child: Text('50'),
                      ),
                      ElevatedButton(
                        onPressed: () => _scrollController.scrollTo(
                          index: 75,
                          duration: Duration(seconds: 1),
                        ),
                        child: Text('75'),
                      ),
                    ],
                  ), */
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
