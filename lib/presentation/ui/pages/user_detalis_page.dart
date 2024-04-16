import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/presentation/ui/pages/comment_page.dart';
import 'package:progress_bar/presentation/view_models/user_view_model.dart';

class UserDetailsPage extends StatefulWidget {
  final UserViewModel user;

  const UserDetailsPage({Key? key, required this.user}) : super(key: key);

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final loadingPageBloc = BlocProvider.of<UserDetailsPageBloc>(context);
      loadingPageBloc.add(LoadInitialEvent(widget.user.id));
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 8, // Добавляем тень для AppBar
          title: Row(
            children: [
              const CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(
                    'https://kartinki.pics/uploads/posts/2022-12/thumbs/1670577795_25-kartinkin-net-p-neitralnie-kartinki-vkontakte-26.jpg'),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.user.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.user.email,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Альбомы',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Посты',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Заметки',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: BlocBuilder<UserDetailsPageBloc, UserDetailsPageState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return TabBarView(
                children: [
                  // Первая вкладка: Альбомы
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      mainAxisSpacing: 8, // Отступ между строками
                      crossAxisSpacing: 8, // Отступ между столбцами
                      // Соотношение сторон элементов
                    ),
                    itemCount: state.albumViewModelList.length,
                    itemBuilder: (context, index) {
                      final album = state.albumViewModelList[index];
                      return GestureDetector(
                        onTap: () {
                          // Обработка нажатия на альбом
                        },
                        child: Card(
                          elevation: 4, // Тень для карточки
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  album.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  // Вторая вкладка: Посты
                  // Виджет для отображения постов
                  ListView.builder(
                    itemCount: state.postViewModelList.length,
                    itemBuilder: (context, index) {
                      final post = state.postViewModelList[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        elevation: 4, // Добавляем тень для карточки
                        child: ListTile(

                          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Отступы внутри ListTile
                          title: Text(
                            post.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15, // Изменяем размер шрифта заголовка
                              color: Colors.black, // Изменяем цвет текста заголовка
                            ),
                          ),
                          subtitle: Text(
                            post.body,
                            style: const TextStyle(
                              fontSize: 14, // Изменяем размер шрифта подзаголовка
                              color: Colors.black, // Изменяем цвет текста подзаголовка
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.comment),
                            onPressed: () {
                            showModalBottomSheet(context: context, builder: (BuildContext context){
                              return const SizedBox(
                                height: 800,
                               child: Center(
                             child:  Text('close'),
                               ),
                              );
                            });
                            },
                          ),
                        ),
                      );
                    },
                  ),

                  // Третья вкладка: Задачи (ToDo)
                  ListView.builder(
                    itemCount: state.todoViewModelList.length,
                    itemBuilder: (context, index) {
                      final todo = state.todoViewModelList[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        elevation: 2,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: todo.completed ? Colors.green : Colors.red,
                            child: Icon(
                              todo.completed ? Icons.check : Icons.close,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(
                            todo.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: todo.completed ? TextDecoration.lineThrough : null,
                            ),
                          ),
                          subtitle: Text(
                            'Completed: ${todo.completed ? 'Yes' : 'No'}',
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
