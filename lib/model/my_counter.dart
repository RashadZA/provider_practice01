import 'package:flutter/material.dart';
class MyCounter extends ChangeNotifier{

  //internal counter
  int _counter = 0;

  //this is getter function
  int get counter => _counter;

  //This is setter and set the value and notify about change
  set counter (int counter){
    _counter = counter;
    notifyListeners();
  }

  //increment function
  increment(){
    counter = counter + 1;
  }

  //decrement function
  decrement(){
    counter = counter - 1;
  }

}