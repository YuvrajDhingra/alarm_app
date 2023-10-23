import 'package:clock_app/alarm_bloc/alarm_cubit.dart';
import 'package:clock_app/time_bloc/time_bloc.dart';
import 'package:clock_app/view/alarm%20view/alarm_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'constants.dart';
import 'view/clock view/clock_view.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  late int _currentIndex;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar:Container(
          padding:EdgeInsets.only(left: 20,right: 20,bottom: 20),
          child: GNav(
            selectedIndex: _currentIndex,
            backgroundColor: backgroundColor,
            rippleColor: Colors.white,
            hoverColor: Colors.white,
            haptic: true,
            tabBorderRadius: 30,
            curve: Curves.easeOutExpo,
            duration:Duration(milliseconds: 300),
            gap: 10,
            color: Colors.black38,
            activeColor: Colors.blueGrey,
            iconSize: 34,
            tabBackgroundColor: Colors.white60,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs:[
              GButton(
                icon: Icons.access_time_rounded,
                text: 'Time',
              ),
              GButton(
                icon: Icons.alarm_add,
                text: 'Alarm',
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              ),
            ],
            onTabChange: (value){
              _pageController.animateToPage(value, duration:Duration(milliseconds: 300), curve: Curves.easeIn);
            },
          ),
        ),
        body: AnimatedBuilder(
          animation: _pageController,
          builder: (context, child){
            return PageView(
              controller: _pageController,
              children: [
                BlocProvider(create:  (context) => TimeCubit(),child:ClockScreen(),),
                BlocProvider(create:  (context) => AlarmCubit(),child:AlarmScreen(),),
              ],
            );
          },
        )
    );
  }
}
