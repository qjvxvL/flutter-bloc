import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_decrement.dart';
import '../event/event_decrement.dart';
import '../state/state_decrement.dart';

class Halaman1 extends StatefulWidget {
  const Halaman1 ({super.key});

  @override
  State<Halaman1> createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc_decrement, State_decrement>(
      builder: (context, state) {
        if (state is State_decrement_initial) {
          return _halaman1(context, 0);
        } else if (state is State_decrement_update) {
          return _halaman1(context, state.number);
        } else {
          return Container();
        }
      },
    );
  }
}

Widget _halaman1(BuildContext context, int number) {
  return Scaffold(
    appBar: AppBar(
        title: Text("Halaman decrement")
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number.toString()),
          ElevatedButton(onPressed: () {
            context.read<Bloc_decrement>().add(Event_decrement_kurangNumber());
          },
            child: Text("kurang"),
          )
        ],
      ),
    ),
  );
}