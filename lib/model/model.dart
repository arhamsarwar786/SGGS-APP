// To parse this JSON data, do
//
//     final contentModel = contentModelFromJson(jsonString);

import 'dart:convert';

ContentModel contentModelFromJson(String? str) => ContentModel.fromJson(json.decode(str!));

String contentModelToJson(ContentModel? data) => json.encode(data!.toJson());

class ContentModel {
    ContentModel({
        this.message,
        this.code,
        this.contents,
    });

    String? message;
    int? code;
    List<Content?>? contents;

    factory ContentModel.fromJson(Map<String, dynamic>? json) => ContentModel(
        message: json!["message"],
        code: json["code"],
        contents: List<Content?>.from(json["contents"].map((x) => Content.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "code": code,
        "contents": List<dynamic>.from(contents!.map((x) => x!.toJson())),
    };
}

class Content {
    Content({
        this.id,
        this.langid,
        this.line,
        this.pageno,
        this.lineno,
        this.type,
        this.contentTypeId,
    });

    String? id;
    String? langid;
    String? line;
    String? pageno;
    String? lineno;
    String? type;
    String? contentTypeId;

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        langid: json["langid"],
        line: json["line"],
        pageno: json["pageno"],
        lineno: json["lineno"],
        type: json["type"],
        contentTypeId: json["content_type_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id!,
        "langid": langid!,
        "line": line!,
        "pageno": pageno!,
        "lineno": lineno!,
        "type": type!,
        "content_type_id": contentTypeId!,
    };
}
