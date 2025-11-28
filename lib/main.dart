import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session19/bloc/counter_bloc.dart';
import 'package:session19/pages/pages_decrement.dart';
import 'package:session19/pages/pages_decrement_alt.dart';
import 'package:session19/pages/pages_increment.dart';
import 'package:session19/pages/pages_increment_alt.dart';
import 'package:session19/pages/pages_multiplication.dart';
import 'package:session19/pages/pages_multiplication_alt.dart';
import 'package:session19/pages/pages_navigation.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Latihan Flutter',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent)),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/increment': (context) => const IncrementPage(),
          '/decrement': (context) => const DecrementPage(),
          '/multiplication': (context) => const MultiplicationPage(),
        },
      ),
    );
  }
}
