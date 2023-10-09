import 'package:calculator_task/bloc/calculator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/calculator_button.dart';

class CalculatorView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var calc = CalculatorCubit.get(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: BlocConsumer<CalculatorCubit, CalculatorState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(calc.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(buttonText: 'AC',
                        buttonColor: Colors.grey,
                        textColor: Colors.black),
                    CalculatorButton(buttonText: '+/-',
                        buttonColor: Colors.grey,
                        textColor: Colors.black),
                    CalculatorButton(buttonText: '%',
                        buttonColor: Colors.grey,
                        textColor: Colors.black),
                    CalculatorButton(buttonText: '/',
                        buttonColor: Colors.amber[700]!,
                        textColor: Colors.white),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(buttonText: '7',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '8',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '9',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: 'x',
                        buttonColor: Colors.amber[700]!,
                        textColor: Colors.white),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(buttonText: '4',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '5',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '6',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '-',
                        buttonColor: Colors.amber[700]!,
                        textColor: Colors.white),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(buttonText: '1',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '2',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '3',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '+',
                        buttonColor: Colors.amber[700]!,
                        textColor: Colors.white),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //this is button Zero
                    ElevatedButton(
                      onPressed: () {
                        calc.calculation('0');
                      },
                      child: Text('0',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[850],
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(32),),
                        padding: const EdgeInsets.fromLTRB(34, 20, 128, 20),
                      ),
                    ),
                    CalculatorButton(buttonText: '.',
                        buttonColor: Colors.grey[850]!,
                        textColor: Colors.white),
                    CalculatorButton(buttonText: '=',
                        buttonColor: Colors.amber[700]!,
                        textColor: Colors.white),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          );
        },
      ),
    );
  }
}