import 'package:clean_arquitecture_definitive/core/errors/exceptions.dart';
import 'package:clean_arquitecture_definitive/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:clean_arquitecture_definitive/data/models/pokemon_model.dart';
import 'package:clean_arquitecture_definitive/core/errors/failure.dart';
import 'package:clean_arquitecture_definitive/domain/repositories/pokemon_repository.dart';
import 'package:dartz/dartz.dart';

class PokemonRepositoryImpl implements PokemonRepository{

    final PokemonRemoteDataSource remoteDataSource;

    PokemonRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, PokemonModel>> getPokemon({required String pokemonNumber}) async {
    
    try {
      final remotePokemon = await remoteDataSource.getPokemon(pokemonNumber: pokemonNumber);
      return Right(remotePokemon);
    } on ServerException{
      return Left(ServerFailure(errorMessage: "Error al obtener pokemon"));
    }

  }



}