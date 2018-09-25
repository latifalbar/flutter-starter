import 'package:flutter/material.dart';

import 'startup.dart';
import 'startup_data.dart';

class StartupListMain extends StatelessWidget {
  const StartupListMain();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final startups = <Startup>[];

    for (var i = 0; i < startupData.length; i++) {
      startups.add(Startup(
        assetLocation: startupData[i].assetLocation,
        startupName: startupData[i].startupName,
        startupDescription: startupData[i].startupDescription,
      ));
    }

    Widget getList(Orientation orientation) {
      if (orientation == Orientation.portrait) {
        return new ListView.builder(
          itemBuilder: (context, index) => startups[index],
          itemCount: startups.length,
        );
      } else {
        return new GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => startups[index],
          itemCount: startups.length,
        );
      }
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text('Startup List'),
      ),
      body: OrientationBuilder(
          builder: (context, orientation) => new Container(
                child: getList(orientation),
              )),
    );
  }
}
