import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Todo {
  final String id;
  final String desc;
  final bool completed;

  Todo({required this.id, required this.desc, required this.completed});

  List<Object> get props => [id, desc, completed];

  bool get stringify => true;
}

enum Filter {
  all,
  active,
  completed,
}
