// Ваш виджет для страницы комментариев
import 'package:flutter/material.dart';
import 'package:progress_bar/presentation/view_models/comment_view_model.dart';


// Ваш виджет для страницы комментариев
class CommentPage extends StatelessWidget {
  final int postId;// Идентификатор поста
   final List<CommentViewModel> commentViewModelList;

  const CommentPage({Key? key, required this.postId,  required this.commentViewModelList,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Вставьте ваш код отображения комментариев на странице
    return Scaffold(
      appBar: AppBar(
        title: Text('Комментарии к посту $postId'),
      ),
      body: ListView.builder(
            itemCount: commentViewModelList.length,
            itemBuilder: (context, index) {
              final comment = commentViewModelList[index];
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
          ),

    );
  }
}
