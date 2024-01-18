import 'package:equatable/equatable.dart';

class SpriteEntitie extends Equatable{
    final String? backDefault;
    final String? backFemale;
    final String? backShiny;
    final String? backShinyFemale;
    final String? frontDefault;
    final String? frontFemale;
    final String? frontShiny;
    final String? frontShinyFemale;

    const SpriteEntitie({
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
      List<Object?> get props =>[
        backDefault,
        backFemale,
        backShiny,
        backShinyFemale,
        frontDefault,
        frontFemale,
        frontShiny,
        frontShinyFemale,
      ];
}