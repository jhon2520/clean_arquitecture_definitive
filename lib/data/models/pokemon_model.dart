import 'package:clean_arquitecture_definitive/data/models/sprite_model.dart';
import 'package:clean_arquitecture_definitive/domain/entities/pokemon_entitie.dart';

class PokemonModel implements PokemonEntitie {
  @override
  final int? baseExperience;
  @override
  final int? height;
  @override
  final int? id;
  @override
  final bool? isDefault;
  @override
  final String? locationAreaEncounters;
  @override
  final String? name;
  @override
  final int? order;
  @override
  final int? weight;
  @override
  final SpriteModel? sprites;

  const PokemonModel({
    this.baseExperience,
    this.height,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.name,
    this.order,
    this.weight,
    this.sprites,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        baseExperience: json["base_experience"],
        height: json["height"],
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        name: json["name"],
        order: json["order"],
        weight: json["weight"],
        sprites: json["sprites"] == null ? null : SpriteModel.fromJson(json["sprites"]),
      );

  Map<String, dynamic> toJson() => {
        "base_experience": baseExperience,
        "height": height,
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "name": name,
        "order": order,
        "weight": weight,
        "sprites": sprites?.toJson(),
      };
      
        @override
        List<Object?> get props => [
          baseExperience,
          height,
          id,
          isDefault,
          locationAreaEncounters,
          name,
          order,
          weight,
        ];
      
        @override
        bool? get stringify => true;


}
