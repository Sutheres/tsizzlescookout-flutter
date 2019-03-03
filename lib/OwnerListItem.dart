import 'package:flutter/material.dart';

class OwnerListItem extends StatelessWidget {
  final String name;
  final String record;
  final String playoffRecord;
  final String superbowlRecord;
  final bool isActive;
  final ColorSwatch color;
  final IconData iconLocation;

  const OwnerListItem(
      {Key key,
      @required this.name,
      @required this.record,
      @required this.playoffRecord,
      @required this.superbowlRecord,
      @required this.isActive,
      @required this.color,
      @required this.iconLocation})
      : assert(name != null),
        assert(record != null),
        assert(playoffRecord != null),
        assert(superbowlRecord != null),
        assert(isActive != null),
        assert(color != null),
        assert(iconLocation != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 105.0,
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
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
              Expanded(
                //padding: EdgeInsets.only(left: 50, top: 8.0, right: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Record: $record',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      'Playoff Record: $playoffRecord',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      'Superbowl Record: $superbowlRecord',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      'Active: $isActive',
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
