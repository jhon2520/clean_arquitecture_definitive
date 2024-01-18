import 'package:clean_arquitecture_definitive/core/errors/exceptions.dart';
import 'package:clean_arquitecture_definitive/data/models/pokemon_model.dart';
import 'package:dio/dio.dart';

abstract class PokemonRemoteDataSource{

  Future<PokemonModel> getPokemon({required String pokemonNumber});

}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource{

  final Dio dio;

  PokemonRemoteDataSourceImpl(this.dio);

  @override
  Future<PokemonModel> getPokemon({required String pokemonNumber}) async{
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/$pokemonNumber',
    );

    if(response.statusCode == 200){
      return PokemonModel.fromJson(response.data);
    }else{
      throw ServerException();
    }
  }



}

