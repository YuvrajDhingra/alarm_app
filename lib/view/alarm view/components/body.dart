import 'package:flutter/material.dart';
import 'alarm_list.dart';
class Body extends StatelessWidget {
  Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 50
          ),
          Text(
            'Alarm App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Expanded(
              child: AlarmList()
          ),
        ],
      ),
    );
  }
}
