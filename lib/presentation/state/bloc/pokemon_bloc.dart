import 'package:bloc/bloc.dart';
import 'package:clean_arquitecture_definitive/core/errors/failure.dart';
import 'package:clean_arquitecture_definitive/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:clean_arquitecture_definitive/data/models/pokemon_model.dart';
import 'package:clean_arquitecture_definitive/data/repositories/pokemon_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonRepositoryImpl pokemonRepositoryImpl;

  PokemonBloc(this.pokemonRepositoryImpl) : super(const PokemonState()) {

    on<GetPokemonEvent>((event, emit) async {
      final Either<Failure, PokemonModel> failureOPkemon =
          await pokemonRepositoryImpl.getPokemon
              .call(pokemonNumber: event.pokemonNumber);

      failureOPkemon.fold((Failure newFailure) {
        emit(state.copyWith(existError: true));
      }, (PokemonModel newPokemon) {
        print("pokemon 111${newPokemon.name}");

        emit(state.copyWith(activePokemon: newPokemon));
      });
    });
  }
}
