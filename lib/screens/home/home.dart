import 'package:flutter/material.dart';
import '/models/app_theme.dart';
import '/models/counter.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    final appTheme = Provider.of<AppTheme>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
            IconButton(
              icon: const Icon(Icons.brightness_4),
              onPressed: () => appTheme.toggleTheme(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increaseCount,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
