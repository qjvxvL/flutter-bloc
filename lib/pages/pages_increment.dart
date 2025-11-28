import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session19/bloc/bloc_increment.dart';
import 'package:session19/event/event_increment.dart';
import 'package:session19/state/state_increment.dart';

class Halaman3 extends StatefulWidget {
  const Halaman3({super.key});

  @override
  State<Halaman3> createState() => _Halaman3State();
}

class _Halaman3State extends State<Halaman3> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc_increment, State_increment>(
      builder: (context, state) {
        if (state is State_increment_initial) {
          return _halaman3(context, 0);
        } else if (state is State_increment_update) {
          return _halaman3(context, state.number);
        } else {
          return Container();
        }
      },
    );
  }
}

Widget _halaman3(BuildContext context, int number) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Halaman Increment")
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number.toString()),
          ElevatedButton(onPressed: () {
            context.read<Bloc_increment>().add(Event_increment_tambahNumber());
          },
              child: Text("tambah"),
          )
        ],
      ),
    ),
  );
}