// To parse this JSON data, do
//
//     final recipeModel = recipeModelFromJson(jsonString);

import 'dart:convert';

recipeModel recipeModelFromJson(String str) =>
    recipeModel.fromJson(json.decode(str));

String recipeModelToJson(recipeModel data) => json.encode(data.toJson());

class recipeModel {
  recipeModel({
    this.id,
    this.title,
    this.image,
    this.imageType,
    this.servings,
    this.readyInMinutes,
    this.license,
    this.sourceName,
    this.sourceUrl,
    this.spoonacularSourceUrl,
    this.aggregateLikes,
    this.healthScore,
    this.spoonacularScore,
    this.pricePerServing,
    this.analyzedInstructions,
    this.cheap,
    this.creditsText,
    this.cuisines,
    this.dairyFree,
    this.diets,
    this.gaps,
    this.glutenFree,
    this.instructions,
    this.ketogenic,
    this.lowFodmap,
    this.occasions,
    this.sustainable,
    this.vegan,
    this.vegetarian,
    this.veryHealthy,
    this.veryPopular,
    this.whole30,
    this.weightWatcherSmartPoints,
    this.dishTypes,
    this.extendedIngredients,
    this.summary,
    this.winePairing,
  });

  int? id;
  String? title;
  String? image;
  String? imageType;
  int? servings;
  int? readyInMinutes;
  String? license;
  String? sourceName;
  String? sourceUrl;
  String? spoonacularSourceUrl;
  int? aggregateLikes;
  int? healthScore;
  int? spoonacularScore;
  double? pricePerServing;
  List<dynamic>? analyzedInstructions;
  bool? cheap;
  String? creditsText;
  List<dynamic>? cuisines;
  bool? dairyFree;
  List<dynamic>? diets;
  String? gaps;
  bool? glutenFree;
  String? instructions;
  bool? ketogenic;
  bool? lowFodmap;
  List<dynamic>? occasions;
  bool? sustainable;
  bool? vegan;
  bool? vegetarian;
  bool? veryHealthy;
  bool? veryPopular;
  bool? whole30;
  int? weightWatcherSmartPoints;
  List<String>? dishTypes;
  List<ExtendedIngredient>? extendedIngredients;
  String? summary;
  WinePairing? winePairing;

  factory recipeModel.fromJson(Map<String, dynamic> json) => recipeModel(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        imageType: json["imageType"],
        servings: json["servings"],
        readyInMinutes: json["readyInMinutes"],
        license: json["license"],
        sourceName: json["sourceName"],
        sourceUrl: json["sourceUrl"],
        spoonacularSourceUrl: json["spoonacularSourceUrl"],
        aggregateLikes: json["aggregateLikes"],
        healthScore: json["healthScore"],
        spoonacularScore: json["spoonacularScore"],
        pricePerServing: json["pricePerServing"].toDouble(),
        analyzedInstructions:
            List<dynamic>.from(json["analyzedInstructions"].map((x) => x)),
        cheap: json["cheap"],
        creditsText: json["creditsText"],
        cuisines: List<dynamic>.from(json["cuisines"].map((x) => x)),
        dairyFree: json["dairyFree"],
        diets: List<dynamic>.from(json["diets"].map((x) => x)),
        gaps: json["gaps"],
        glutenFree: json["glutenFree"],
        instructions: json["instructions"],
        ketogenic: json["ketogenic"],
        lowFodmap: json["lowFodmap"],
        occasions: List<dynamic>.from(json["occasions"].map((x) => x)),
        sustainable: json["sustainable"],
        vegan: json["vegan"],
        vegetarian: json["vegetarian"],
        veryHealthy: json["veryHealthy"],
        veryPopular: json["veryPopular"],
        whole30: json["whole30"],
        weightWatcherSmartPoints: json["weightWatcherSmartPoints"],
        dishTypes: List<String>.from(json["dishTypes"].map((x) => x)),
        extendedIngredients: List<ExtendedIngredient>.from(
            json["extendedIngredients"]
                .map((x) => ExtendedIngredient.fromJson(x))),
        summary: json["summary"],
        winePairing: WinePairing.fromJson(json["winePairing"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "imageType": imageType,
        "servings": servings,
        "readyInMinutes": readyInMinutes,
        "license": license,
        "sourceName": sourceName,
        "sourceUrl": sourceUrl,
        "spoonacularSourceUrl": spoonacularSourceUrl,
        "aggregateLikes": aggregateLikes,
        "healthScore": healthScore,
        "spoonacularScore": spoonacularScore,
        "pricePerServing": pricePerServing,
        "analyzedInstructions":
            List<dynamic>.from(analyzedInstructions!.map((x) => x)),
        "cheap": cheap,
        "creditsText": creditsText,
        "cuisines": List<dynamic>.from(cuisines!.map((x) => x)),
        "dairyFree": dairyFree,
        "diets": List<dynamic>.from(diets!.map((x) => x)),
        "gaps": gaps,
        "glutenFree": glutenFree,
        "instructions": instructions,
        "ketogenic": ketogenic,
        "lowFodmap": lowFodmap,
        "occasions": List<dynamic>.from(occasions!.map((x) => x)),
        "sustainable": sustainable,
        "vegan": vegan,
        "vegetarian": vegetarian,
        "veryHealthy": veryHealthy,
        "veryPopular": veryPopular,
        "whole30": whole30,
        "weightWatcherSmartPoints": weightWatcherSmartPoints,
        "dishTypes": List<dynamic>.from(dishTypes!.map((x) => x)),
        "extendedIngredients":
            List<dynamic>.from(extendedIngredients!.map((x) => x.toJson())),
        "summary": summary,
        "winePairing": winePairing!.toJson(),
      };
}

class ExtendedIngredient {
  ExtendedIngredient({
    this.aisle,
    this.amount,
    this.consitency,
    this.id,
    this.image,
    this.measures,
    this.meta,
    this.name,
    this.original,
    this.originalName,
    this.unit,
  });

  String? aisle;
  double? amount;
  Consitency? consitency;
  int? id;
  String? image;
  Measures? measures;
  List<String>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) =>
      ExtendedIngredient(
        aisle: json["aisle"],
        amount: json["amount"].toDouble(),
        consitency: consitencyValues.map![json["consitency"]],
        id: json["id"],
        image: json["image"],
        measures: Measures.fromJson(json["measures"]),
        meta: List<String>.from(json["meta"].map((x) => x)),
        name: json["name"],
        original: json["original"],
        originalName: json["originalName"],
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "aisle": aisle,
        "amount": amount,
        "consitency": consitencyValues.reverse[consitency],
        "id": id,
        "image": image,
        "measures": measures!.toJson(),
        "meta": List<dynamic>.from(meta!.map((x) => x)),
        "name": name,
        "original": original,
        "originalName": originalName,
        "unit": unit,
      };
}

enum Consitency { SOLID, LIQUID }

final consitencyValues =
    EnumValues({"liquid": Consitency.LIQUID, "solid": Consitency.SOLID});

class Measures {
  Measures({
    this.metric,
    this.us,
  });

  Metric? metric;
  Metric? us;

  factory Measures.fromJson(Map<String, dynamic> json) => Measures(
        metric: Metric.fromJson(json["metric"]),
        us: Metric.fromJson(json["us"]),
      );

  Map<String, dynamic> toJson() => {
        "metric": metric!.toJson(),
        "us": us!.toJson(),
      };
}

class Metric {
  Metric({
    this.amount,
    this.unitLong,
    this.unitShort,
  });

  double? amount;
  String? unitLong;
  String? unitShort;

  factory Metric.fromJson(Map<String, dynamic> json) => Metric(
        amount: json["amount"].toDouble(),
        unitLong: json["unitLong"],
        unitShort: json["unitShort"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "unitLong": unitLong,
        "unitShort": unitShort,
      };
}

class WinePairing {
  WinePairing({
    this.pairedWines,
    this.pairingText,
    this.productMatches,
  });

  List<String>? pairedWines;
  String? pairingText;
  List<ProductMatch>? productMatches;

  factory WinePairing.fromJson(Map<String, dynamic> json) => WinePairing(
        pairedWines: List<String>.from(json["pairedWines"].map((x) => x)),
        pairingText: json["pairingText"],
        productMatches: List<ProductMatch>.from(
            json["productMatches"].map((x) => ProductMatch.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pairedWines": List<dynamic>.from(pairedWines!.map((x) => x)),
        "pairingText": pairingText,
        "productMatches":
            List<dynamic>.from(productMatches!.map((x) => x.toJson())),
      };
}

class ProductMatch {
  ProductMatch({
    this.id,
    this.title,
    this.description,
    this.price,
    this.imageUrl,
    this.averageRating,
    this.ratingCount,
    this.score,
    this.link,
  });

  int? id;
  String? title;
  String? description;
  String? price;
  String? imageUrl;
  double? averageRating;
  int? ratingCount;
  double? score;
  String? link;

  factory ProductMatch.fromJson(Map<String, dynamic> json) => ProductMatch(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        imageUrl: json["imageUrl"],
        averageRating: json["averageRating"].toDouble(),
        ratingCount: json["ratingCount"],
        score: json["score"].toDouble(),
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "imageUrl": imageUrl,
        "averageRating": averageRating,
        "ratingCount": ratingCount,
        "score": score,
        "link": link,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
