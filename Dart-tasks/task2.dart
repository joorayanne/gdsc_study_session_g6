import 'dart:io';

int findMax(List<int> array) {
  int max = array[0];
  for (int i = 0; i < array.length; i++) {
    if (max < array[i]) {
      max = array[i];
    }
  }
  return max;
}

int findMin(List<int> array) {
  int min = array[0];
  for (int i = 0; i < array.length; i++) {
    if (min > array[i]) {
      min = array[i];
    }
  }
  return min;
}

int findSum(List<int> array) {
  int sum = 0;
  for (int i = 0; i < array.length; i++) {
    sum += array[i];
  }
  return sum;
}

double findAverage(List<int> array) {
  return findSum(array) / array.length;
}

void main() {
  print("how many numbers do you want to enter: ");
  int listSize = int.parse(stdin.readLineSync()!);
  print("enter numbers: ");
  List<int> numbers = [];
  for (int i = 0; i < listSize; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  print("maximum value: ${findMax(numbers)} ");
  print("minimum value: ${findMin(numbers)} ");
  print("sum: ${findSum(numbers)} ");
  print("average: ${findAverage(numbers)} ");
}
