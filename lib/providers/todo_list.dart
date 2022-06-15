import 'package:flutter/cupertino.dart';

import '../models/todo_model.dart';

class TodoListState {
  final List<Todo> todos;

  TodoListState({required this.todos});

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(id: "1", desc: "Clean the room", completed: false),
      Todo(id: "2", desc: "wash the dish", completed: false),
      Todo(id: "3", desc: "Do homework", completed: false)
    ]);
  }

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

class TodoList with ChangeNotifier {
  TodoListState _state = TodoListState.initial();

  TodoListState get state => _state;

  void addTodo(String todoDesc) {
    final newTodo = Todo(desc: todoDesc, id: '');
    final newTodos = [..._state.todos, newTodo];
    _state = _state.copyWith(todos: newTodos);
    notifyListeners();
  }

  void editTodo(String id, String todoDesc) {
    final newTodos = _state.todos.map((Todo todo) {
      if (todo.id == id) {
        return Todo(id: id, desc: todo.desc);
      }
      return todo;
    }).toList();
    _state = _state.copyWith(todos: newTodos);
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    final newTodos = _state.todos.where((Todo t) => t.id != todo.id).toList();

    _state = _state.copyWith(todos: newTodos);
    notifyListeners();
  }
}
