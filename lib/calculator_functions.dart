import 'package:math_expressions/math_expressions.dart';

class CalculatorFunctions {
  static String evaluateExpression(String expression) {
    String result = "0";
    try {
      expression = expression.replaceAll("x", "*");
      expression = expression.replaceAll("÷", "/");
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      result = '${exp.evaluate(EvaluationType.REAL, cm)}';
    } catch (e) {
      result = "Error";
    }
    return result;
  }
}
