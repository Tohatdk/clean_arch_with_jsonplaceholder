import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsPageBloc, UserDetailsPageState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(tabs: ['Completed', 'Uncompleted'].map((e) => Text(e)).toList()),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListView(
                        children: state.completedTodos.map((todo) => Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          elevation: 2,
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              todo.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            subtitle: const Text(
                              'Completed: Yes',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        )).toList(growable: false),
                      ),
                      ListView(
                        children: state.inCompletedTodos.map((todo) => Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          elevation: 2,
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.cancel,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              todo.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            subtitle: const Text(
                              'Completed: No',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        )).toList(growable: false),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
