import 'package:bloc/bloc.dart';
import 'package:clean_arquitecture_definitive/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:clean_arquitecture_definitive/data/models/pokemon_model.dart';
import 'package:equatable/equatable.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {


  PokemonRemoteDataSourceImpl dataSourceImpl;

  PokemonBloc(this.dataSourceImpl) : super(const PokemonState()) {

      on<GetPokemonEvent>((event, emit) async{

      final PokemonModel  activePokemon = 
      await dataSourceImpl.getPokemon.call(pokemonNumber: event.pokemonNumber);

      print("pokemon ${activePokemon.name}"); 

      emit(state.copyWith(activePokemon));
    });
  }
}
