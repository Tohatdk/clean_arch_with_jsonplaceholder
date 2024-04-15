import 'package:progress_bar/data/data_sources/data_source.dart';
import 'package:progress_bar/data/dto_entity_mapper.dart';
import 'package:progress_bar/domain/entities/todo_entity.dart';
import 'package:progress_bar/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository{
  final DataSource _todoRepository;
  TodoRepositoryImpl(this._todoRepository);

  @override
  Future<List<TodoEntity>> getTodos()async{
    final dtoTodoList= await _todoRepository.getTodos();
    final todosList=dtoTodoList.map((e)=>e.toEntity()).toList(growable: false);
    return todosList;
  }
}