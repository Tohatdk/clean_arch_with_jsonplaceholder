import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_bar/src/presentation/bloc/user_detalis_page_bloc/user_details_page_bloc.dart';
import 'package:progress_bar/src/presentation/view_models/album_view_model.dart';
import 'package:progress_bar/src/presentation/view_models/photo_view_model.dart';

class AlbumTabPage extends StatelessWidget {
  const AlbumTabPage({super.key});

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
            itemCount: state.albumViewModelList.length,
            itemBuilder: (context, index) {
              final album = state.albumViewModelList[index];
              return AlbumWidget(album: album);
            },
          );
        }
      },
    );
  }
}

class AlbumWidget extends StatelessWidget {
  const AlbumWidget({super.key, required this.album});

  final AlbumViewModel album;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
          decoration:   BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(123, 123, 123, 0.5), // White with opacity 0.15
                Color.fromRGBO(0, 0, 0, 0.5), // Black with opacity 0.15
              ],
              stops: [0.0, 1.0],
            ),

          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  album.title,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _PhotoPageView(photoList: album.photos),
            ],
          )),
    );
  }
}

class _PhotoPageView extends StatelessWidget {
  const _PhotoPageView({required this.photoList});

  final List<PhotoViewModel> photoList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 660),
        child: PageView.builder(
          itemCount: photoList.length,
          itemBuilder: (BuildContext context, int index) {
            final photo = photoList[index];
            return Column(
              children: [
                Expanded(
                  child: CachedNetworkImage(
                    imageUrl: photo.url,
                    fit: BoxFit.fitHeight,
                    placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 8),
                  child: Text(photo.title),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
