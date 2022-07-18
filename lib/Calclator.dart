import 'dart:math';
import 'package:vector_math/vector_math_64.dart' as vec;

class calc {
  late double input1,input2,out;

  calc(){
    input1=input2=out=0;
  }
  double add (){

    out= input1+input2;
    return out;
  }
  double sub (){

    out= input1-input2;
    return out;
  }
  double mul (){

    out= input1*input2;
    return out;
  }
  double div (){

    out= input1/input2;
    return out;
  }

  double mod (){

    out= input1 % input2;
    return out;
  }

  double Power (){

    out=  pow(input1, input2).toDouble();
    return out;
  }

  /// single input

  double SROOT (){

    out= sqrt(input1);
    return out;
  }
  double EXP (){

    out= exp(input1);
    return out;
  }
  double LOG (){

    out= log(input1);
    return out;
  }

  double Sin (){
   var conv= input1 * (pi/180);

    out= sin(vec.radians(input1));
    return out;
  }
  double Cos (){
    out= cos(vec.radians(input1));
    return out;
  }
  double Tan (){
    out= tan(vec.radians(input1));
    return out;
  }
  double ASin (){
    out= asin(vec.radians(input1));
    return out;
  }
  double ACos (){
    out= acos(vec.radians(input1));
    return out;
  }
  double ATan (){
    out= atan(vec.radians(input1));
    return out;
  }
}