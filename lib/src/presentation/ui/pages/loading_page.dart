import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/src/presentation/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:progress_bar/src/presentation/ui/pages/home_page.dart';




class LoadingPage extends StatefulWidget {
  const LoadingPage({
    super.key,
  });

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final loadingPageBloc = BlocProvider.of<HomePageBloc>(context);
      loadingPageBloc.add( LoadingStartEvent()); // Исправляем на добавление константы
    });
  }

  void _blocListener(BuildContext context, HomePageState state) {
      int percent = state.percent; // или что-то подобное, в зависимости от вашей реализации
      if (percent == 100) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(title: 'Aman Demo'),
          ),
        );
      }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocConsumer<HomePageBloc, HomePageState>(
        listener: _blocListener,
        builder: (context, state) {
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
          );
        },
      ),
    );
  }
}
