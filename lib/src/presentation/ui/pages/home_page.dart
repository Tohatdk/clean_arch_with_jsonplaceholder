import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/di_dart.dart';
import 'package:progress_bar/src/domain/use_case/get_album_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_comment_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_photo_usecase.dart';
import 'package:progress_bar/src/domain/use_case/get_post_uscase.dart';
import 'package:progress_bar/src/domain/use_case/get_todo_usecase.dart';
import 'package:progress_bar/src/presentation/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:progress_bar/src/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/src/presentation/ui/pages/user_detalis_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state.isLoading) {
            // Если загрузка в процессе, отображаем индикатор загрузки
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            // Если загрузка завершена, отображаем список пользователей
            return ListView.builder(
              itemCount: state.userViewModelList.length,
              itemBuilder: (context, index) {
                final user = state.userViewModelList[index];
                print(index);
                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://kartinki.pics/uploads/posts/2022-12/thumbs/1670577795_25-kartinkin-net-p-neitralnie-kartinki-vkontakte-26.jpg'),
                    ),

                    title: Text(user.name,),
                    subtitle: Text(user.email),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => UserDetailsPageBloc(

                              getPostsUseCase: getIt<GetPostsUseCase>(),
                              getAlbumsUseCase: getIt<GetAlbumsUseCase>(),
                              getPhotosUseCase: getIt<GetPhotosUseCase>(),
                              getCommentsUseCase: getIt<GetCommentsUseCase>(),
                              getTodosUseCase: getIt<GetTodosUseCase>(),
                            ),
                            child: UserDetailsPage(user: user),
                          ),
                        ),
                     );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}