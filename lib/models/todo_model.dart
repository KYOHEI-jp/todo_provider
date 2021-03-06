import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class Todo {
  final String? id;
  final String desc;
  final bool? completed;

  Todo({this.id, required this.desc, this.completed});

  @override
  List<Object> get props => [id!, desc, completed!];

  @override
  bool get stringify => true;
}

enum Filter {
  all,
  active,
  completed,
}
