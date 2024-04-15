import 'package:progress_bar/domain/entities/todo_entity.dart';
import 'package:progress_bar/domain/repository/todo_repository.dart';

class GetTodosUseCase{
 final TodoRepository _todoRepository;
 const GetTodosUseCase (this._todoRepository);
 Future<List<TodoEntity>>call()async{
   final todoList= await _todoRepository.getTodos();
   return todoList;
 }
}