import 'package:clean_arquitecture_definitive/domain/entities/sprite_entitie.dart';

class SpriteModel implements SpriteEntitie{


    @override
  final String? backDefault;
    @override
  final String? backFemale;
    @override
  final String? backShiny;
    @override
  final String? backShinyFemale;
    @override
  final String? frontDefault;
    @override
  final String? frontFemale;
    @override
  final String? frontShiny;
    @override
  final String? frontShinyFemale;
    
    SpriteModel({
      this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale,
    });
    
      @override
      List<Object?> get props => [
        backDefault,
        backFemale,
        backShiny,
        backShinyFemale,
        frontDefault,
        frontFemale,
        frontShiny,
        frontShinyFemale,
      ];
    
      @override
      bool? get stringify => true;


      factory SpriteModel.fromJson(Map<String, dynamic> json) => SpriteModel(
      backDefault: json["back_default"],
      backFemale: json["back_female"],
      backShiny: json["back_shiny"],
      backShinyFemale: json["back_shiny_female"],
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
      frontShiny: json["front_shiny"],
      frontShinyFemale: json["front_shiny_female"],
      );

    Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
    };

}