part of 'pokemon_bloc.dart';

class PokemonState extends Equatable {

  final PokemonModel? activePokemon;
  final bool? existError;

  const PokemonState({
    this.activePokemon,
    this.existError,
  });

  PokemonState copyWith(
   { PokemonModel? activePokemon,
    bool? existError,}
  ){
    return PokemonState(
      activePokemon: activePokemon ?? this.activePokemon,
      existError: existError ?? this.existError,
    );
  }
  
  @override
  List<Object?> get props => [
    activePokemon,
    existError
  ];
  

}

