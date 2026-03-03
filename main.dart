import 'dart:io';

void main() {
  // 1. List of Names
  List<String> names = ["Alice", "Bob", "Charlie"];
  print("--- Task 1: Names List ---");
  print(names);

  // 2. Set of Fruits using a loop
  Set<String> fruits = {
    "Apple",
    "Banana",
    "Mango",
    "Apple",
  }; // Sets ignore duplicates
  print("\n--- Task 2: Fruits Set ---");
  for (var fruit in fruits) {
    print(fruit);
  }

  // 3. Expenses with User Input
  print("\n--- Task 3: Expenses Calculator ---");
  List<double> expenses = [];
  print("How many expenses do you want to add?");
  int? count = int.tryParse(stdin.readLineSync()!);
  if (count != null) {
    for (int i = 0; i < count; i++) {
      print("Enter expense ${i + 1}:");
      double? amount = double.tryParse(stdin.readLineSync()!);
      if (amount != null) expenses.add(amount);
    }
    double total = expenses.fold(0, (prev, element) => prev + element);
    print("Total Expenses: \$$total");
  }

  // 4. Days List (add method)
  List<String> days = [];
  days.addAll([
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ]);
  print("\n--- Task 4: Days ---");
  print(days);

  // 5. Friends List (filtering with 'where')
  List<String> friends = [
    "Amir",
    "Bob",
    "Anaya",
    "David",
    "Eve",
    "Alex",
    "Frank",
  ];
  var startsWithA = friends
      .where((n) => n.toLowerCase().startsWith('a'))
      .toList();
  print("\n--- Task 5: Friends starting with 'A' ---");
  print(startsWithA);

  // 6. Map (Update and Print)
  Map<String, dynamic> person = {
    "name": "John",
    "address": "123 Street",
    "age": 25,
    "country": "USA",
  };
  person["country"] = "Canada"; // Update
  print("\n--- Task 6: Map Update ---");
  person.forEach((key, value) => print("$key: $value"));

  // 7. Map Filtering (Key length 4)
  Map<String, String> contacts = {
    "John": "555-1234",
    "Alex": "555-5678",
    "Zayn": "555-0000",
    "Gemini": "AI-9999",
  };
  var keysLen4 = contacts.keys.where((k) => k.length == 4).toList();
  print("\n--- Task 7: Keys with length 4 ---");
  print(keysLen4);

  // 8. To-Do Application
  print("\n--- Task 8: To-Do App ---");
  runTodoApp();
}

// Simple To-Do Application Logic
void runTodoApp() {
  List<String> tasks = [];
  bool running = true;

  while (running) {
    print("\n[1] Add Task | [2] Remove Task | [3] View Tasks | [4] Exit");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Enter task:");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) tasks.add(task);
        break;
      case '2':
        print("Enter task number to remove (1-${tasks.length}):");
        int? index = int.tryParse(stdin.readLineSync()!);
        if (index != null && index > 0 && index <= tasks.length) {
          tasks.removeAt(index - 1);
        } else {
          print("Invalid index.");
        }
        break;
      case '3':
        print("Your Tasks:");
        if (tasks.isEmpty) print("No tasks yet.");
        tasks.asMap().forEach((i, t) => print("${i + 1}. $t"));
        break;
      case '4':
        running = false;
        break;
      default:
        print("Invalid choice.");
    }
  }
}
