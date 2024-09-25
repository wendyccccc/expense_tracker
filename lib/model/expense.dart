import 'package:uuid/uuid.dart';

const uuid = Uuid();

// enum適合拿來當類別
enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // 預設值

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
