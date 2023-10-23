import 'package:analog_clock/analog_clock.dart';
import 'package:clock_app/constants.dart';
import 'package:flutter/material.dart';
class Clock extends StatelessWidget {
  const Clock({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width),
            gradient: LinearGradient(
              colors: [shadowColor, lightShadowColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                  color: shadowColor,
                  offset: const Offset(8, 6),
                  blurRadius: 12),
              BoxShadow(
                  color: lightShadowColor,
                  offset: const Offset(-8, -6),
                  blurRadius: 12),
            ],
          ),
        ),
         const Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: AnalogClock(
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
              isLive: true,
              hourHandColor: Colors.white60,
              minuteHandColor: Colors.redAccent,
              numberColor: Colors.blueGrey,
              secondHandColor: Colors.blueGrey,
              showNumbers: true,
              showAllNumbers: true,
              showDigitalClock: false,
            )),
      ],
    );
  }
}
