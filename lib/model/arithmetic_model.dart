class ArithmeticModel {
  final int first;
  final int second;

  ArithmeticModel({required this.first, required this.second});

  int add(){
    return first + second;
  }

  int subtract(){
    return first - second;
  }

  int multiply(){
    return first * second;
  }

  double divide(){
    if (second == 0) {
      throw Exception('Division by zero');
    }
    return first / second;
  }
}