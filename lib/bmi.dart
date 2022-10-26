import 'dart:math';

bmiCal(int height, int wieght) {
  double bmi = wieght / pow((height / 100), 2);
  print(bmi);
}

void main(List<String> args) {
  bmiCal(160, 70);
}
