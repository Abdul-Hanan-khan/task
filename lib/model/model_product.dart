// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  ProductModel({
    this.id,
    this.itemName,
    this.categoryId,
    this.picture,
    this.itemDescription,
    this.itemSummary,
    this.safety,
    this.itemAlias,
    this.type,
    this.energyPer100GKj,
    this.energyPer100GKcal,
    this.gl,
    this.caution,
    this.itemUsedFor,
    this.dietaryRestrictions,
    this.macronutrients,
    this.antioxidants,
    this.vitamins,
    this.minerals,
    this.eu,
    this.usa,
    this.uk,
    this.australia,
    this.newZealand,
    this.dailyLimit,
    this.sideEffects,
    this.fermented,
    this.addedProbiotics,
    this.mercuryLevel,
    this.phytosterolMg,
    this.cholesterol,
    this.probiotic,
    this.createdDate,
    this.updatedDate,
    this.deletedFlag,
    this.categoryName,
    this.itemImage,
    this.noOfRows,
  });

  String id;
  String itemName;
  String categoryId;
  String picture;
  String itemDescription;
  String itemSummary;
  Safety safety;
  String itemAlias;
  String type;
  Antioxidants energyPer100GKj;
  String energyPer100GKcal;
  String gl;
  Antioxidants caution;
  String itemUsedFor;
  DietaryRestrictions dietaryRestrictions;
  String macronutrients;
  Antioxidants antioxidants;
  Antioxidants vitamins;
  Antioxidants minerals;
  Australia eu;
  Australia usa;
  Australia uk;
  Australia australia;
  Australia newZealand;
  DailyLimit dailyLimit;
  String sideEffects;
  AddedProbiotics fermented;
  AddedProbiotics addedProbiotics;
  Antioxidants mercuryLevel;
  Antioxidants phytosterolMg;
  Antioxidants cholesterol;
  AddedProbiotics probiotic;
  DateTime createdDate;
  DateTime updatedDate;
  String deletedFlag;
  String categoryName;
  String itemImage;
  int noOfRows;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    itemName: json["item_name"],
    categoryId: json["category_id"],
    picture: json["picture"],
    itemDescription: json["item_description"],
    itemSummary: json["item_summary"],
    safety: safetyValues.map[json["safety"]],
    itemAlias: json["item_alias"],
    type: json["type"],
    energyPer100GKj: antioxidantsValues.map[json["energy_per_100g_kj"]],
    energyPer100GKcal: json["energy_per_100g_kcal"],
    gl: json["gl"],
    caution: antioxidantsValues.map[json["caution"]],
    itemUsedFor: json["item_used_for"],
    dietaryRestrictions: dietaryRestrictionsValues.map[json["dietary_restrictions"]],
    macronutrients: json["macronutrients"],
    antioxidants: antioxidantsValues.map[json["antioxidants"]],
    vitamins: antioxidantsValues.map[json["vitamins"]],
    minerals: antioxidantsValues.map[json["minerals"]],
    eu: australiaValues.map[json["eu"]],
    usa: australiaValues.map[json["usa"]],
    uk: australiaValues.map[json["uk"]],
    australia: australiaValues.map[json["australia"]],
    newZealand: australiaValues.map[json["new_zealand"]],
    dailyLimit: dailyLimitValues.map[json["daily_limit"]],
    sideEffects: json["side_effects"],
    fermented: addedProbioticsValues.map[json["fermented"]],
    addedProbiotics: addedProbioticsValues.map[json["added_probiotics"]],
    mercuryLevel: antioxidantsValues.map[json["mercury_level"]],
    phytosterolMg: antioxidantsValues.map[json["phytosterol_mg"]],
    cholesterol: antioxidantsValues.map[json["cholesterol"]],
    probiotic: addedProbioticsValues.map[json["probiotic"]],
    createdDate: DateTime.parse(json["created_date"]),
    updatedDate: DateTime.parse(json["updated_date"]),
    deletedFlag: json["deleted_flag"],
    categoryName: json["category_name"],
    itemImage: json["item_image"],
    noOfRows: json["no_of_rows"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "item_name": itemName,
    "category_id": categoryId,
    "picture": picture,
    "item_description": itemDescription,
    "item_summary": itemSummary,
    "safety": safetyValues.reverse[safety],
    "item_alias": itemAlias,
    "type": type,
    "energy_per_100g_kj": antioxidantsValues.reverse[energyPer100GKj],
    "energy_per_100g_kcal": energyPer100GKcal,
    "gl": gl,
    "caution": antioxidantsValues.reverse[caution],
    "item_used_for": itemUsedFor,
    "dietary_restrictions": dietaryRestrictionsValues.reverse[dietaryRestrictions],
    "macronutrients": macronutrients,
    "antioxidants": antioxidantsValues.reverse[antioxidants],
    "vitamins": antioxidantsValues.reverse[vitamins],
    "minerals": antioxidantsValues.reverse[minerals],
    "eu": australiaValues.reverse[eu],
    "usa": australiaValues.reverse[usa],
    "uk": australiaValues.reverse[uk],
    "australia": australiaValues.reverse[australia],
    "new_zealand": australiaValues.reverse[newZealand],
    "daily_limit": dailyLimitValues.reverse[dailyLimit],
    "side_effects": sideEffects,
    "fermented": addedProbioticsValues.reverse[fermented],
    "added_probiotics": addedProbioticsValues.reverse[addedProbiotics],
    "mercury_level": antioxidantsValues.reverse[mercuryLevel],
    "phytosterol_mg": antioxidantsValues.reverse[phytosterolMg],
    "cholesterol": antioxidantsValues.reverse[cholesterol],
    "probiotic": addedProbioticsValues.reverse[probiotic],
    "created_date": createdDate.toIso8601String(),
    "updated_date": updatedDate.toIso8601String(),
    "deleted_flag": deletedFlag,
    "category_name": categoryName,
    "item_image": itemImage,
    "no_of_rows": noOfRows,
  };
}

enum AddedProbiotics { NO, YES }

final addedProbioticsValues = EnumValues({
  "No": AddedProbiotics.NO,
  "Yes": AddedProbiotics.YES
});

enum Antioxidants { EMPTY, GENERALLY_WELL_TOLERATED, GENERALLY_WELL_ACCEPTED }

final antioxidantsValues = EnumValues({
  "-": Antioxidants.EMPTY,
  "Generally well accepted.": Antioxidants.GENERALLY_WELL_ACCEPTED,
  "Generally well tolerated.": Antioxidants.GENERALLY_WELL_TOLERATED
});

enum Australia { NOT_APPROVED, UNKNOWN }

final australiaValues = EnumValues({
  "Not approved": Australia.NOT_APPROVED,
  "Unknown": Australia.UNKNOWN
});

enum DailyLimit { NO_SPECIFIED_UPPER_LIMIT, EMPTY }

final dailyLimitValues = EnumValues({
  "-": DailyLimit.EMPTY,
  "No specified upper limit": DailyLimit.NO_SPECIFIED_UPPER_LIMIT
});

enum DietaryRestrictions { EMPTY, VEGAN_LACTOSE_INTOLERANCE }

final dietaryRestrictionsValues = EnumValues({
  "-": DietaryRestrictions.EMPTY,
  "Vegan,Lactose Intolerance": DietaryRestrictions.VEGAN_LACTOSE_INTOLERANCE
});

enum Safety { CAUTION, SAFE }

final safetyValues = EnumValues({
  "Caution": Safety.CAUTION,
  "Safe": Safety.SAFE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
