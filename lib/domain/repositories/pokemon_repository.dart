

import 'package:clean_arquitecture_definitive/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import '../entities/pokemon_entitie.dart';


abstract class PokemonRepository{

  Future<Either<Failure,PokemonEntitie>> getPokemon({required String pokemonNumber});

}