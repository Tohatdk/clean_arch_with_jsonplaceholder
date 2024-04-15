// Ваш виджет для страницы комментариев
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';

// Ваш виджет для страницы комментариев
class CommentPage extends StatelessWidget {
  final int postId; // Идентификатор поста

  const CommentPage({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Вставьте ваш код отображения комментариев на странице
    return Scaffold(
      appBar: AppBar(
        title: Text('Комментарии к посту $postId'),
      ),
      body: BlocBuilder<UserDetailsPageBloc, UserDetailsPageState>(
        builder: (context, state) {
          // Отображение списка комментариев для выбранного поста
          return ListView.builder(
            itemCount: state.commentViewModelList.length,
            itemBuilder: (context, index) {
              final comment = state.commentViewModelList[index];
              // Отображение только комментариев для выбранного поста
              if (comment.postId == postId) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.blueGrey[100], // Цвет фона для комментариев
                  child: ListTile(
                    title: Text(
                      comment.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(comment.body),
                    leading: const CircleAvatar(
                      // Здесь можно использовать другие иконки или изображения
                      child: Icon(Icons.account_circle),
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          );
        },
      ),
    );
  }
}
