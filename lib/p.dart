import 'dart:io';

void main() {
  masala3();
}

masala3() {
  List<String> data = stdin.readLineSync()!.split(' ');
  int N = int.parse(data[0]);
  int a = int.parse(data[1]);
  int m = 0;

  while (a / 10 > 0) {
    a = a ~/ 10;
    m++;
  }
  print(m == N ? "yes" : "no");
}

masala2() {
  List<String> list = stdin.readLineSync()!.split(' ');
  print(int.parse(list[0]) + 2);
}

masala1() {
  List<String> list = stdin.readLineSync()!.split(' ');

  int max = 0;
  if (int.parse(list[0]) > int.parse(list[1])) {
    max = int.parse(list[0]);
  } else {
    max = int.parse(list[1]);
  }
  print(max > int.parse(list[2]) ? max : int.parse(list[2]));
}
