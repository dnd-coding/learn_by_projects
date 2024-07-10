// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_image.dart';

import 'package:the_cat_flutter/features/home/domain/entities/cat_weight.dart';

class CatBreedEntity extends Equatable {
  final CatWeightEntity? weight;
  final String? name;
  final String? id;
  final String? cfaUrl;
  final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  final String? temperament;
  final String? origin;
  final String? countryCodes;
  final String? countryCode;
  final String? description;
  final String? lifeSpan;
  final int? indoor;
  final int? lap;
  final String? altNames;
  final int? adaptability;
  final int? affectionLevel;
  final int? childFriendly;
  final int? dogFriendly;
  final int? energyLevel;
  final int? grooming;
  final int? healthIssues;
  final int? intelligence;
  final int? sheddingLevel;
  final int? socialNeeds;
  final int? strangerFriendly;
  final int? vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  final int? suppressedTail;
  final int? shortLegs;
  final String? wikipediaUrl;
  final int? hypoallergenic;
  final String? referenceImageId;
  final CatImageEntity? image;

  const CatBreedEntity({
    this.weight,
    this.id,
    this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.lap,
    this.altNames,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.intelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
    this.image,
  });

  @override
  List<Object?> get props {
    return [
      weight,
      id,
      name,
      cfaUrl,
      vetstreetUrl,
      vcahospitalsUrl,
      temperament,
      origin,
      countryCodes,
      countryCode,
      description,
      lifeSpan,
      indoor,
      lap,
      altNames,
      adaptability,
      affectionLevel,
      childFriendly,
      dogFriendly,
      energyLevel,
      grooming,
      healthIssues,
      intelligence,
      sheddingLevel,
      socialNeeds,
      strangerFriendly,
      vocalisation,
      experimental,
      hairless,
      natural,
      rare,
      rex,
      suppressedTail,
      shortLegs,
      wikipediaUrl,
      hypoallergenic,
      referenceImageId,
      image,
    ];
  }

  factory CatBreedEntity.fromJson(Map<String, dynamic> json) {
    return CatBreedEntity(
      weight:
          json['weight'] != null ? CatWeightEntity.fromJson(json['weight']) : null,
      id: json['id'],
      name: json['name'],
      cfaUrl: json['cfa_url'],
      vetstreetUrl: json['vetstreet_url'],
      vcahospitalsUrl: json['vcahospitals_url'],
      temperament: json['temperament'],
      origin: json['origin'],
      countryCodes: json['country_codes'],
      countryCode: json['country_code'],
      description: json['description'],
      lifeSpan: json['life_span'],
      indoor: json['indoor'],
      lap: json['lap'],
      altNames: json['alt_names'],
      adaptability: json['adaptability'],
      affectionLevel: json['affection_level'],
      childFriendly: json['child_friendly'],
      dogFriendly: json['dog_friendly'],
      energyLevel: json['energy_level'],
      grooming: json['grooming'],
      healthIssues: json['health_issues'],
      intelligence: json['intelligence'],
      sheddingLevel: json['shedding_level'],
      socialNeeds: json['social_needs'],
      strangerFriendly: json['stranger_friendly'],
      vocalisation: json['vocalisation'],
      experimental: json['experimental'],
      hairless: json['hairless'],
      natural: json['natural'],
      rare: json['rare'],
      rex: json['rex'],
      suppressedTail: json['suppressed_tail'],
      shortLegs: json['short_legs'],
      wikipediaUrl: json['wikipedia_url'],
      hypoallergenic: json['hypoallergenic'],
      referenceImageId: json['reference_image_id'],
      image: json['image'] != null ? CatImageEntity.fromJson(json['image']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weight != null) {
      data['weight'] = this.weight!.toJson();
    }
    data['id'] = this.id;
    data['name'] = this.name;
    data['cfa_url'] = this.cfaUrl;
    data['vetstreet_url'] = this.vetstreetUrl;
    data['vcahospitals_url'] = this.vcahospitalsUrl;
    data['temperament'] = this.temperament;
    data['origin'] = this.origin;
    data['country_codes'] = this.countryCodes;
    data['country_code'] = this.countryCode;
    data['description'] = this.description;
    data['life_span'] = this.lifeSpan;
    data['indoor'] = this.indoor;
    data['lap'] = this.lap;
    data['alt_names'] = this.altNames;
    data['adaptability'] = this.adaptability;
    data['affection_level'] = this.affectionLevel;
    data['child_friendly'] = this.childFriendly;
    data['dog_friendly'] = this.dogFriendly;
    data['energy_level'] = this.energyLevel;
    data['grooming'] = this.grooming;
    data['health_issues'] = this.healthIssues;
    data['intelligence'] = this.intelligence;
    data['shedding_level'] = this.sheddingLevel;
    data['social_needs'] = this.socialNeeds;
    data['stranger_friendly'] = this.strangerFriendly;
    data['vocalisation'] = this.vocalisation;
    data['experimental'] = this.experimental;
    data['hairless'] = this.hairless;
    data['natural'] = this.natural;
    data['rare'] = this.rare;
    data['rex'] = this.rex;
    data['suppressed_tail'] = this.suppressedTail;
    data['short_legs'] = this.shortLegs;
    data['wikipedia_url'] = this.wikipediaUrl;
    data['hypoallergenic'] = this.hypoallergenic;
    data['reference_image_id'] = this.referenceImageId;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    return data;
  }
}
