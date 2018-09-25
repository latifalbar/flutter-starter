import 'package:flutter/material.dart';
import 'startup_list_main.dart';

void main() => runApp(StartupList());

class StartupList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup List',
        home: new StartupListMain());
  }
}
