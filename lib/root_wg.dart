import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_manager/main.dart';
import 'package:scoped_model/scoped_model.dart';

import 'counter.dart';

class AppRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MyModelState>(
      rebuildOnChange: true,
      builder: (context, child, model) => Card(
      elevation: 4.0,
            child: Column(
              children: <Widget>[
                Text('(Root Widget)', style: Theme.of(context).textTheme.headline4),
                Text('${model.counterValue}', style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Counter(),
                    Counter(),
                  ],
                ),
              ],
            ),
      )
    );
  }
}