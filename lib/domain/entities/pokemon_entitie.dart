import 'package:clean_arquitecture_definitive/domain/entities/sprite_entitie.dart';
import 'package:equatable/equatable.dart';

class PokemonEntitie extends Equatable{
    final int? baseExperience;
    final int? height;
    final int? id;
    final bool? isDefault;
    final String? locationAreaEncounters;
    final String? name;
    final int? order;
    final int? weight;
    final SpriteEntitie? sprites;

    const PokemonEntitie({
        this.baseExperience,
        this.height,
        this.id,
        this.isDefault,
        this.locationAreaEncounters,
        this.name,
        this.order,
        this.weight,
        this.sprites
    });
    
  @override
  List<Object?> get props {
    return [
      baseExperience,
      height,
      id,
      isDefault,
      locationAreaEncounters,
      name,
      order,
      weight,
      sprites
    ];
  }


}




