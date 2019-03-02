import 'package:flutter/material.dart';

class OwnerListItem extends StatelessWidget {
  final String name;
  final String record;
  final String playoffRecord;
  final String superbowlRecord;
  final ColorSwatch color;
  final IconData iconLocation;

  const OwnerListItem(
      {Key key,
      @required this.name,
      @required this.record,
        @required this.playoffRecord,
        @required this.superbowlRecord,
      @required this.color,
      @required this.iconLocation})
      : assert(name != null),
        assert(record != null),
        assert(playoffRecord != null),
        assert(superbowlRecord != null),
        assert(color != null),
        assert(iconLocation != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 110.0,
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
          splashColor: color,
          highlightColor: color,
          onTap: () {
            print('It\'s the leage fuck nigga!');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  iconLocation,
                  size: 60.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      'Record: $record',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      'Playoff Record: $playoffRecord',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      'Superbowl Record: $superbowlRecord',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
