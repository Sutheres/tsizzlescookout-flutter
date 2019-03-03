import 'package:flutter/material.dart';
import 'package:t_sizzles_cookout/OwnerListItem.dart';

const _backgroundColor = Colors.white;

class OwnersScreen extends StatelessWidget {
  const OwnersScreen();

  static const _ownerNames = <String>[
    'Ed (Commish)',
    'RepN',
    'Justo',
    'JD',
    'Tone. C',
    'Mike',
    'Eddie',
    'Slic',
    'Kole',
    'Tone P.',
    'Uncle B',
    'Mel',
    'Hero',
    'Pat',
    'Shif',
    'L-Boogie',
    'Wayne',
    'Jamil',
    'Henry',
    'Tommie',
    'Nana',
    'T-Mack',
    'Ryland',
    'Bo',
    'Marcell',
  ];

  static const _ownerRecords = <String>[
    '55-28',
    '47-36',
    '46-37',
    '47-36',
    '48-35',
    '39-44',
    '33-36',
    '39-30',
    '33-36',
    '22-34',
    '19-36',
    '25-16',
    '14-13',
    '11-16',
    '6-7',
    '33-37',
    '3-11',
    '13-29',
    '35-21',
    '22-20',
    '13-29',
    '12-16',
    '10-18',
    '9-5',
    '6-8'
  ];

  static const _ownerPlayoffRecords = <String>[
    '4-5',
    '3-3',
    '0-3',
    '1-4',
    '0-5',
    '2-1',
    '2-0',
    '6-1',
    '1-2',
    '2-0',
    '2-0',
    '2-3',
    '2-0',
    '0-0',
    '0-0',
    '4-2',
    '0-0',
    '0-0',
    '2-3',
    '1-2',
    '0-0',
    '0-0',
    '0-0',
    '0-1',
    '0-0'
  ];

  static const _ownerSuperbowlRecords = <String>[
    '1-0',
    '1-0',
    '0-0',
    '0-0',
    '0-0',
    '0-1',
    '0-1',
    '1-2',
    '0-0',
    '1-0',
    '0-1',
    '0-0',
    '0-1',
    '0-0',
    '0-0',
    '1-0',
    '0-0',
    '0-0',
    '0-0',
    '0-0',
    '0-0',
    '0-0',
    '0-0',
    '0-0',
    '0-0'
  ];

  static const _isOwnerActive = <bool>[
    true,
    true,
    true,
    true,
    true,
    true,
    false,
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    true,
    false,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true
  ];

  Widget buildOwnerWidgets(List<Widget> owners) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => owners[index],
      itemCount: owners.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final owners = <OwnerListItem>[];

    for (var i = 0; i < _ownerNames.length; i++) {

      var name = _ownerNames[i];
      var record = _ownerRecords[i];
      var playoffRecord = _ownerPlayoffRecords[i];
      var superbowlRecord = _ownerSuperbowlRecords[i];
      var isActive = _isOwnerActive[i];

      owners.add(OwnerListItem(name: name,
          record: record,
          playoffRecord: playoffRecord,
          superbowlRecord: superbowlRecord,
          isActive: isActive,
          color: Colors.deepPurple,
          iconLocation: Icons.star));
    }

    final listView = Container(
      color: _backgroundColor,
      child: buildOwnerWidgets(owners),
    );

    final appBar = AppBar(
      title: Text(
          'Owners',
        style: TextStyle(fontSize: 30.0),
      ),
      elevation: 0.0,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
