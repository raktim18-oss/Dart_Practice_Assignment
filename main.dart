import 'dart:math'; // Required for pi, pow, and Random

// 1. Print Name using a function
void printMyName() {
  print("My name is John.");
}

// 2. Print even numbers between intervals
void printEvens(int start, int end) {
  print("Even numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// 3. Greet function with an argument
void greet(String name) {
  print("Hello, $name");
}

// 4. Random password generator
String generatePassword(int length) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*';
  Random rnd = Random();
  return List.generate(
    length,
    (index) => chars[rnd.nextInt(chars.length)],
  ).join();
}

// 5. Area of a circle: pi * r * r
double circleArea(double radius) {
  return pi * radius * radius;
}

// 6. Reverse a String
String reverseString(String input) {
  return input.split('').reversed.join('');
}

// 7. Calculate power: base^exponent
num calculatePower(num base, num exponent) {
  return pow(base, exponent);
}

// 8. Add function returning sum
num add(num a, num b) {
  return a + b;
}

// 9. Max of three numbers
num maxNumber(num a, num b, num c) {
  return [a, b, c].reduce(max);
}

// 10. Check if even (returns bool)
bool isEven(int number) {
  return number % 2 == 0;
}

// 11. Create user with default isActive = true
void createUser(String name, int age, {bool isActive = true}) {
  print("User Created: Name: $name, Age: $age, Active: $isActive");
}

// 12. Calculate rectangle area with default values (1.0)
double calculateArea({double length = 1.0, double width = 1.0}) {
  return length * width;
}

// --- MAIN FUNCTION TO TEST ALL SOLUTIONS ---
void main() {
  print("--- Task 1 ---");
  printMyName();

  print("\n--- Task 2 ---");
  printEvens(1, 10);

  print("\n--- Task 3 ---");
  greet("John");

  print("\n--- Task 4 ---");
  print("Random Password: ${generatePassword(10)}");

  print("\n--- Task 5 ---");
  print("Area of Circle (r=5): ${circleArea(5).toStringAsFixed(2)}");

  print("\n--- Task 6 ---");
  print("Reversed 'Dart': ${reverseString('Dart')}");

  print("\n--- Task 7 ---");
  print("5^3 = ${calculatePower(5, 3)}");

  print("\n--- Task 8 ---");
  print("15 + 10 = ${add(15, 10)}");

  print("\n--- Task 9 ---");
  print("Max of 12, 45, 23: ${maxNumber(12, 45, 23)}");

  print("\n--- Task 10 ---");
  print("Is 8 even? ${isEven(8)}");

  print("\n--- Task 11 ---");
  createUser("Alice", 25); // Uses default
  createUser("Bob", 30, isActive: false); // Overrides default

  print("\n--- Task 12 ---");
  print("Area (default): ${calculateArea()}");
  print("Area (5x4): ${calculateArea(length: 5, width: 4)}");
}
