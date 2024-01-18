import 'package:clean_arquitecture_definitive/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:clean_arquitecture_definitive/presentation/state/bloc/pokemon_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonBloc>(
          create: (context) => PokemonBloc(PokemonRemoteDataSourceImpl(Dio()))..add(GetPokemonEvent(pokemonNumber: "1"),),
          lazy: false,
          )
      ],
      child: const _MaterialWidget());
  }
}

class _MaterialWidget extends StatelessWidget {
  const _MaterialWidget();

  @override
  Widget build(BuildContext context) {

    print("oeoeoe");
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}