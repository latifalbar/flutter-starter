import 'package:flutter/material.dart';

import 'startup_detail.dart';

class Startup extends StatelessWidget {
  final String assetLocation;
  final String startupName;
  final String startupDescription;

  const Startup(
      {Key key, this.assetLocation, this.startupName, this.startupDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Card(
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new StartupDetail(
                          assetLocation: assetLocation,
                          startupName: startupName,
                          startupDescription: startupDescription,
                        )));
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    assetLocation,
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
                Center(
                  child: new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      startupName,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
