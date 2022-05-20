import '../models/todo_model.dart';

class TodoListState {
  final List<Todo> todos;

  TodoListState({required this.todos});

  @override
  List<Object> get props => [todos];

  @override
  bool get stringify => true;

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(todos: todos ?? this.todos);
  }
}
