import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:youtube_flutter/blocs/favorite_bloc.dart';
import 'package:youtube_flutter/blocs/videos_bloc.dart';
import 'package:youtube_flutter/screens/home.dart';

import 'widgets/api.dart';

void main() {
  Api api = Api();
  api.search("eletro");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: VideosBloc(),
        child: BlocProvider(
          bloc: FavoriteBloc(),
          child: MaterialApp(
            title: 'Youtube Flutter',
            debugShowCheckedModeBanner: false,
            home: Home(),

          ),
        )
    );
  }
}
