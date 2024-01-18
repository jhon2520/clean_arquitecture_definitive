

import 'package:clean_arquitecture_definitive/core/errors/failure.dart';
import 'package:clean_arquitecture_definitive/domain/entities/pokemon_entitie.dart';
import 'package:clean_arquitecture_definitive/domain/repositories/pokemon_repository.dart';
import 'package:dartz/dartz.dart';

class GetPokemonUseCase{


  final PokemonRepository pokemonRepository;

  GetPokemonUseCase(this.pokemonRepository);


  Future<Either<Failure,PokemonEntitie>> call({required String pokemonNumber})async {
    return await pokemonRepository.getPokemon(pokemonNumber: pokemonNumber);
  }

}