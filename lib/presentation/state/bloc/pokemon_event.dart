part of 'pokemon_bloc.dart';

abstract class PokemonEvent{}


class GetPokemonEvent extends PokemonEvent{
  final String pokemonNumber;
  GetPokemonEvent({required this.pokemonNumber});
}