import 'package:clock_app/alarm_bloc/alarm_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<AlarmCubit>(context).addData(context);
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFC4CBE7),
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(50),
        ),
        width: 60,
        height: 60,
        child: Icon(
            Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
