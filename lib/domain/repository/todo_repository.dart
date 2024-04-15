import 'package:progress_bar/domain/entities/todo_entity.dart';

abstract interface class TodoRepository{
  Future<List<TodoEntity>> getTodos();
}