import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:progress_bar/services/routes/app_route_paths.dart';

import 'package:progress_bar/src/presentation/bloc/home_page_bloc/home_page_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final loadingPageBloc = BlocProvider.of<HomePageBloc>(context);
      loadingPageBloc.add( LoadingStartEvent()); // Исправляем на добавление константы
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if(state.percent<100){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: state.percent * 2,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${state.percent}%', // Обновляем способ преобразования в строку
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ); //_loadingWidget
          }
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
                      context.push(AppRoutePaths.userDetailsPageRoute.fullPath,extra: user);

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