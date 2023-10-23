import 'dart:async';
import 'package:clock_app/time_bloc/time_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clock_app/constants.dart';
import 'components/clock.dart';
class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});
  @override
  State<ClockScreen> createState() => _ClockScreenState();
}
class _ClockScreenState extends State<ClockScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      BlocProvider.of<TimeCubit>(context).updateTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body:SafeArea(
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.only(top: 50.0,right: 70),
              child: Text(
                'Clock App',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:70.0,left: 50),
              child: Clock(),
            ),
          ],
        ),
      ),
    );
  }
}
