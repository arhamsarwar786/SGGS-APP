// To parse this JSON data, do
//
//     final getLanguageModel = getLanguageModelFromJson(jsonString);

import 'dart:convert';

GetLanguageModel getLanguageModelFromJson(String str) => GetLanguageModel.fromJson(json.decode(str));

String getLanguageModelToJson(GetLanguageModel data) => json.encode(data.toJson());

class GetLanguageModel {
    GetLanguageModel({
        this.message,
        this.code,
        this.languages,
    });

    String? message;
    int? code;
    List<Language>? languages;

    factory GetLanguageModel.fromJson(Map<String, dynamic> json) => GetLanguageModel(
        message: json["message"],
        code: json["code"],
        languages: List<Language>.from(json["languages"]!.map((x) => Language.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "code": code,
        "languages": List<dynamic>.from(languages!.map((x) => x.toJson())),
    };
}

class Language {
    Language({
        this.id,
        this.name,
        this.isActive,
    });

    String? id;
    String? name;
    String? isActive;

    factory Language.fromJson(Map<String, dynamic> json) => Language(
        id: json["id"],
        name: json["name"],
        isActive: json["is_active"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_active": isActive,
    };
}
