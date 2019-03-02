import 'package:flutter/material.dart';
import 'package:t_sizzles_cookout/OwnerListItem.dart';


const _ownerName = 'Ed (Commish)';
const _ownerRecord = '100-75';
const _ownerPlayoffRecord = '8-3';
const _ownerSuperbowlRecord = '2-0';
const _ownerIcon = Icons.star;
const _ownerListColor = Colors.deepPurple;


void main() { runApp(TSizzlesCookoutApp()); }

class TSizzlesCookoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T-Sizzle\'s Cookout',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: OwnerListItem(
            name: _ownerName,
            record: _ownerRecord,
            playoffRecord: _ownerPlayoffRecord,
            superbowlRecord: _ownerSuperbowlRecord,
            iconLocation: _ownerIcon,
            color: _ownerListColor,
          ),
        ),
      ),
    );
  }
}
