import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Todo {
  final String id;
  final String desc;
  final bool completed;

  Todo(this.id, this.desc, this.completed);
}
