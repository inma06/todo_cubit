import 'package:uuid/uuid.dart';

enum Filter {
  all,
  active,
  completed,
}

Uuid uuid = Uuid();

class Todo {
  final String id;
  final String desc;
  final bool completed;
  Todo({
    String? id,
    required this.desc,
    this.completed = false,
  }) : this.id = id ?? uuid.v4();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Todo &&
        other.id == id &&
        other.desc == desc &&
        other.completed == completed;
  }

  @override
  int get hashCode => id.hashCode ^ desc.hashCode ^ completed.hashCode;

  @override
  String toString() => 'Todo(id: $id, desc: $desc, completed: $completed)';
}
