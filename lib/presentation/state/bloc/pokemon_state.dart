part of 'pokemon_bloc.dart';

class PokemonState extends Equatable {

  final PokemonModel? activePokemon;

  const PokemonState({
    this.activePokemon,
  });

  PokemonState copyWith(
    PokemonModel? activePokemon
  ){
    return PokemonState(
      activePokemon: activePokemon ?? this.activePokemon
    );
  }
  
  @override
  List<Object?> get props => [
    activePokemon
  ];
  

}

