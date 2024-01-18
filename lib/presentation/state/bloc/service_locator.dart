import 'package:clean_arquitecture_definitive/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:clean_arquitecture_definitive/data/repositories/pokemon_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'pokemon_bloc.dart';

GetIt getIt = GetIt.instance;

void serviceLocatorInit(){

  final Dio client = getIt.registerSingleton( Dio());
  final PokemonRemoteDataSourceImpl remoteDataSource = getIt.registerSingleton( PokemonRemoteDataSourceImpl(client));
  final PokemonRepositoryImpl pokemonRepositoryImpl = getIt.registerSingleton<PokemonRepositoryImpl>( PokemonRepositoryImpl(remoteDataSource));
  getIt.registerSingleton(PokemonBloc(pokemonRepositoryImpl));

}