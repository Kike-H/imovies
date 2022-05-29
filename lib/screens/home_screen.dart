import 'package:flutter/material.dart';
import 'package:imovies/search/delegate.dart';
import 'package:imovies/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/movies_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider =
        Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies in theaters"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                  context: context, delegate: MovieSearchDelegate());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Main Movies
            CardSwipper(movies: moviesProvider.onDisplayMovies),
            //Slider Movies
            MovieSlider(
              title: 'Populars',
              movies: moviesProvider.popularMovies,
              onNextPage: () => moviesProvider.getPopularMovies(),
            )
          ],
        ),
      ),
    );
  }
}
