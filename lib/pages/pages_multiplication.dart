import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../bloc/bloc_multiplication.dart';
import '../event/event_multiplication.dart';
import '../state/state_multiplication.dart';

class Halaman2 extends StatefulWidget {
  const Halaman2({super.key});

  @override
  State<Halaman2> createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc_multiplication, State_multiplication>(
      builder: (context, state) {
        if (state is State_multiplication_initial) {
          return _halaman2(context, 0);
        } else if (state is State_multiplication_update) {
          return _halaman2(context, state.number);
        } else {
          return Container();
        }
      },
    );
  }
}

Widget _halaman2(BuildContext context, int number) {
  return Scaffold(
    appBar: AppBar(
        title: Text("Halaman multiplication")
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number.toString()),
          ElevatedButton(onPressed: () {
            context.read<Bloc_multiplication>().add(Event_multiplication_kaliNumber());
          },
            child: Text("kalikan"),
          )
        ],
      ),
    ),
  );
}