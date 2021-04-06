import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_manager/main.dart';
import 'package:scoped_model/scoped_model.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MyModelState>(
      rebuildOnChange: true,
      builder: (context, child, model) => Card(
        margin: EdgeInsets.all(4.0).copyWith(bottom: 32),
        color: Colors.yellowAccent,
        child: Column(
          children: <Widget>[
            Text('(Children Widget 2)'),
            Text('(${model.counterValue})', style: Theme.of(context).textTheme.headline4),
            ButtonBar(
              children: <Widget>[
                IconButton(
                    onPressed: () => model.decrementCounter(),
                    icon: Icon(Icons.remove),
                    color: Colors.red
                ),
                IconButton(
                  onPressed: () => model.incrementCounter(),
                  icon: Icon(Icons.add),
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}