import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/presentation/view_models/comment_view_model.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsPageBloc, UserDetailsPageState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: state.postViewModelList.length,
            itemBuilder: (context, index) {
              final post = state.postViewModelList[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                elevation: 4, // Добавляем тень для карточки
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  // Отступы внутри ListTile
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
                      fontSize: 14,
                      // Изменяем размер шрифта подзаголовка
                      color: Colors.black, // Изменяем цвет текста подзаголовка
                    ),
                  ),
                  trailing: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isDismissible: true,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return _CommentBottomSheet(
                                postId: post.id,
                                commentViewModelList: post.comments,
                              );
                            },
                          );
                        },
                        child: const Icon(
                          Icons.comment,
                        ),
                      ),
                      Text(post.comments.length.toString()),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}

class _CommentBottomSheet extends StatelessWidget {
  final int postId;
  final List<CommentViewModel> commentViewModelList;

  const _CommentBottomSheet({
    required this.postId,
    required this.commentViewModelList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: commentViewModelList.length,
      itemBuilder: (context, index) {
        final comment = commentViewModelList[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Colors.blueGrey[100],
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      // Используем иконку аккаунта в качестве аватара
                      child: Icon(Icons.account_circle),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // Отображаем имя пользователя для текущего комментария
                            comment.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            // Отображаем электронную почту пользователя для текущего комментария
                            comment.email,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  comment.body,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
