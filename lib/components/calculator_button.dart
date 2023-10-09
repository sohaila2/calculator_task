import 'package:calculator_task/bloc/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  const CalculatorButton({
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,

  });

  @override
  Widget build(BuildContext context) {
    var calc = CalculatorCubit.get(context);
    return BlocConsumer<CalculatorCubit, CalculatorState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          child: ElevatedButton(
            onPressed: () {
              calc.calculation(buttonText);
            },
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 35,
                color: textColor,
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: buttonColor,
              padding: EdgeInsets.all(20),
            ),
          ),
        );
      },
    );
  }
}
