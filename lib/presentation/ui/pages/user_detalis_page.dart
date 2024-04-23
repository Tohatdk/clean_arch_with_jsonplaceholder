
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/presentation/ui/components/album_page.dart';
import 'package:progress_bar/presentation/ui/components/post_page.dart';
import 'package:progress_bar/presentation/ui/components/todo_page.dart';
import 'package:progress_bar/presentation/view_models/user_view_model.dart';

class UserDetailsPage extends StatefulWidget {
  final UserViewModel user;

  const UserDetailsPage({super.key, required this.user});

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
        body: const TabBarView(
          children: [
          AlbumTabPage(),
            PostPage(),
            TodoPage(),
          ],
        ),
      ),
    );
  }
}
