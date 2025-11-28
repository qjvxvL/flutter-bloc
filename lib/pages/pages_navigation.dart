import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session19/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Current Number:', style: TextStyle(fontSize: 24)),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/increment'),
              child: const Text('Go to Increment Page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/decrement'),
              child: const Text('Go to Decrement Page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/multiplication'),
              child: const Text('Go to Multiplication Page'),
            ),
          ],
        ),
      ),
    );
  }
}
