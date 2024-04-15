import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/presentation/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:progress_bar/presentation/ui/pages/user_detalis_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title});

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
                          builder: (context) =>  UserDetailsPage (user: user,),
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