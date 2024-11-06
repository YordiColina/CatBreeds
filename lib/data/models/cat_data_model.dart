// To parse this JSON data, do
//
//     final catData = catDataFromMap(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cat_data.g.dart';

List<CatData> catDataFromMap(String str) => List<CatData>.from(json.decode(str).map((x) => CatData.fromMap(x)));

String catDataToMap(List<CatData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

@JsonSerializable()
class CatData {
  @JsonKey(name: "weight")
  Weight weight;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "cfa_url")
  String? cfaUrl;
  @JsonKey(name: "vetstreet_url")
  String? vetstreetUrl;
  @JsonKey(name: "vcahospitals_url")
  String? vcahospitalsUrl;
  @JsonKey(name: "temperament")
  String temperament;
  @JsonKey(name: "origin")
  String origin;
  @JsonKey(name: "country_codes")
  String countryCodes;
  @JsonKey(name: "country_code")
  String countryCode;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "life_span")
  String lifeSpan;
  @JsonKey(name: "indoor")
  int indoor;
  @JsonKey(name: "lap")
  int? lap;
  @JsonKey(name: "alt_names")
  String? altNames;
  @JsonKey(name: "adaptability")
  int adaptability;
  @JsonKey(name: "affection_level")
  int affectionLevel;
  @JsonKey(name: "child_friendly")
  int childFriendly;
  @JsonKey(name: "dog_friendly")
  int dogFriendly;
  @JsonKey(name: "energy_level")
  int energyLevel;
  @JsonKey(name: "grooming")
  int grooming;
  @JsonKey(name: "health_issues")
  int healthIssues;
  @JsonKey(name: "intelligence")
  int intelligence;
  @JsonKey(name: "shedding_level")
  int sheddingLevel;
  @JsonKey(name: "social_needs")
  int socialNeeds;
  @JsonKey(name: "stranger_friendly")
  int strangerFriendly;
  @JsonKey(name: "vocalisation")
  int vocalisation;
  @JsonKey(name: "experimental")
  int experimental;
  @JsonKey(name: "hairless")
  int hairless;
  @JsonKey(name: "natural")
  int natural;
  @JsonKey(name: "rare")
  int rare;
  @JsonKey(name: "rex")
  int rex;
  @JsonKey(name: "suppressed_tail")
  int suppressedTail;
  @JsonKey(name: "short_legs")
  int shortLegs;
  @JsonKey(name: "wikipedia_url")
  String? wikipediaUrl;
  @JsonKey(name: "hypoallergenic")
  int hypoallergenic;
  @JsonKey(name: "reference_image_id")
  String? referenceImageId;
  @JsonKey(name: "cat_friendly")
  int? catFriendly;
  @JsonKey(name: "bidability")
  int? bidability;

  CatData({
    required this.weight,
    required this.id,
    required this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    this.lap,
    this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    this.wikipediaUrl,
    required this.hypoallergenic,
    this.referenceImageId,
    this.catFriendly,
    this.bidability,
  });

  factory CatData.fromJson(Map<String, dynamic> json) => _$CatDataFromJson(json);

  Map<String, dynamic> toJson() => _$CatDataToJson(this);
}

@JsonSerializable()
class Weight {
  @JsonKey(name: "imperial")
  String imperial;
  @JsonKey(name: "metric")
  String metric;

  Weight({
    required this.imperial,
    required this.metric,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

  Map<String, dynamic> toJson() => _$WeightToJson(this);
}
