import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/calculator_cubit.dart';
import '../views/calculator_view.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CalculatorCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CalculatorView(),
      ),
    );
  }
}