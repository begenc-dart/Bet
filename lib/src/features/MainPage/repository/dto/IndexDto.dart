// To parse this JSON data, do
//
//     final indexDto = indexDtoFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

IndexDto indexDtoFromJson(String str) => IndexDto.fromJson(json.decode(str));

String indexDtoToJson(IndexDto data) => json.encode(data.toJson());

class IndexDto {
    List<Testimonial>? testimonial;
    List<News>? service;
    List<Social>? social;
    List<Faq>? faqs;
    List<Slider>? slider;
    List<News>? news;
    List<SubCategory>? subCategory;
    List<Category>? category;
    List<dynamic>? matches;
    List<UpComMatche>? upComMatche;
    List<dynamic>? weeklyLeader;
    List<dynamic>? leader;
    bool? success;

    IndexDto({
        this.testimonial,
        this.service,
        this.social,
        this.faqs,
        this.slider,
        this.news,
        this.subCategory,
        this.category,
        this.matches,
        this.upComMatche,
        this.weeklyLeader,
        this.leader,
        this.success,
    });

    factory IndexDto.fromJson(Map<String, dynamic> json) => IndexDto(
        testimonial: json["testimonial"] == null ? [] : List<Testimonial>.from(json["testimonial"]!.map((x) => Testimonial.fromJson(x))),
        service: json["service"] == null ? [] : List<News>.from(json["service"]!.map((x) => News.fromJson(x))),
        social: json["social"] == null ? [] : List<Social>.from(json["social"]!.map((x) => Social.fromJson(x))),
        faqs: json["faqs"] == null ? [] : List<Faq>.from(json["faqs"]!.map((x) => Faq.fromJson(x))),
        slider: json["slider"] == null ? [] : List<Slider>.from(json["slider"]!.map((x) => Slider.fromJson(x))),
        news: json["news"] == null ? [] : List<News>.from(json["news"]!.map((x) => News.fromJson(x))),
        subCategory: json["sub_category"] == null ? [] : List<SubCategory>.from(json["sub_category"]!.map((x) => SubCategory.fromJson(x))),
        category: json["category"] == null ? [] : List<Category>.from(json["category"]!.map((x) => Category.fromJson(x))),
        matches: json["matches"] == null ? [] : List<dynamic>.from(json["matches"]!.map((x) => x)),
        upComMatche: json["up_com_matche"] == null ? [] : List<UpComMatche>.from(json["up_com_matche"]!.map((x) => UpComMatche.fromJson(x))),
        weeklyLeader: json["weeklyLeader"] == null ? [] : List<dynamic>.from(json["weeklyLeader"]!.map((x) => x)),
        leader: json["leader"] == null ? [] : List<dynamic>.from(json["leader"]!.map((x) => x)),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "testimonial": testimonial == null ? [] : List<dynamic>.from(testimonial!.map((x) => x.toJson())),
        "service": service == null ? [] : List<dynamic>.from(service!.map((x) => x.toJson())),
        "social": social == null ? [] : List<dynamic>.from(social!.map((x) => x.toJson())),
        "faqs": faqs == null ? [] : List<dynamic>.from(faqs!.map((x) => x.toJson())),
        "slider": slider == null ? [] : List<dynamic>.from(slider!.map((x) => x.toJson())),
        "news": news == null ? [] : List<dynamic>.from(news!.map((x) => x.toJson())),
        "sub_category": subCategory == null ? [] : List<dynamic>.from(subCategory!.map((x) => x.toJson())),
        "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x.toJson())),
        "matches": matches == null ? [] : List<dynamic>.from(matches!.map((x) => x)),
        "up_com_matche": upComMatche == null ? [] : List<dynamic>.from(upComMatche!.map((x) => x.toJson())),
        "weeklyLeader": weeklyLeader == null ? [] : List<dynamic>.from(weeklyLeader!.map((x) => x)),
        "leader": leader == null ? [] : List<dynamic>.from(leader!.map((x) => x)),
        "success": success,
    };
}

class Category {
    int? id;
    String? name;
    String? slug;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    Icon? icon;
    String? catId;
    String? key;

    Category({
        this.id,
        this.name,
        this.slug,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.icon,
        this.catId,
        this.key,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        icon: json["icon"]==null?iconValues.map["football-ball"]: iconValues.map[json["icon"]],
        catId: json["cat_id"],
        key: json["key"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "icon": iconValues.reverse[icon],
        "cat_id": catId,
        "key": key,
    };
}

enum Icon {
    BASEBALL_BALL,
    BASKETBALL_BALL,
    BOXING_GLOVE,
    FOOTBALL_BALL,
    FUTBOL,
    GOLF_BALL,
    HOCKEY_PUCK,
    PALETTE
}

final iconValues = EnumValues({
    "baseball-ball": Icon.BASEBALL_BALL,
    "basketball-ball": Icon.BASKETBALL_BALL,
    "boxing-glove": Icon.BOXING_GLOVE,
    "football-ball": Icon.FOOTBALL_BALL,
    "futbol": Icon.FUTBOL,
    "golf-ball": Icon.GOLF_BALL,
    "hockey-puck": Icon.HOCKEY_PUCK,
    "palette": Icon.PALETTE
});

class Faq {
    int? id;
    String? question;
    String? answer;
    DateTime? createdAt;
    DateTime? updatedAt;

    Faq({
        this.id,
        this.question,
        this.answer,
        this.createdAt,
        this.updatedAt,
    });

    factory Faq.fromJson(Map<String, dynamic> json) => Faq(
        id: json["id"],
        question: json["question"],
        answer: json["answer"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
        "answer": answer,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class News {
    int? id;
    String? image;
    String? title;
    String? slug;
    String? description;
    String? blogCatId;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? imageUrl;

    News({
        this.id,
        this.image,
        this.title,
        this.slug,
        this.description,
        this.blogCatId,
        this.createdAt,
        this.updatedAt,
        this.imageUrl,
    });

    factory News.fromJson(Map<String, dynamic> json) => News(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        slug: json["slug"],
        description: json["description"],
        blogCatId: json["blog_cat_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "slug": slug,
        "description": description,
        "blog_cat_id": blogCatId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "image_url": imageUrl,
    };
}

class Slider {
    int? id;
    String? image;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? imageUrl;

    Slider({
        this.id,
        this.image,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.imageUrl,
    });

    factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        id: json["id"],
        image: json["image"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "image_url": imageUrl,
    };
}

class Social {
    int? id;
    String? icon;
    String? link;
    DateTime? createdAt;
    DateTime? updatedAt;

    Social({
        this.id,
        this.icon,
        this.link,
        this.createdAt,
        this.updatedAt,
    });

    factory Social.fromJson(Map<String, dynamic> json) => Social(
        id: json["id"],
        icon: json["icon"],
        link: json["link"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "icon": icon,
        "link": link,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class SubCategory {
    int? id;
    String? catId;
    String? name;
    String? slug;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? key;
    Category? cat;

    SubCategory({
        this.id,
        this.catId,
        this.name,
        this.slug,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.key,
        this.cat,
    });

    factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        catId: json["cat_id"],
        name: json["name"],
        slug: json["slug"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        key: json["key"],
        cat: json["cat"] == null ? null : Category.fromJson(json["cat"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catId,
        "name": name,
        "slug": slug,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "key": key,
        "cat": cat?.toJson(),
    };
}

class Testimonial {
    int? id;
    String? image;
    String? name;
    String? designation;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? imageUrl;

    Testimonial({
        this.id,
        this.image,
        this.name,
        this.designation,
        this.createdAt,
        this.updatedAt,
        this.imageUrl,
    });

    factory Testimonial.fromJson(Map<String, dynamic> json) => Testimonial(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        designation: json["designation"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "designation": designation,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "image_url": imageUrl,
    };
}

class UpComMatche {
    int? id;
    String? catId;
    String? eventId;
    String? team1Image;
    String? team2Image;
    String? team1;
    String? team2;
    String? team1Slug;
    String? team2Slug;
    DateTime? startDate;
    DateTime? endDate;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? imageUrlTeam1;
    String? imageUrlTeam2;
    Category? cat;
    Category? event;
    List<Question>? questions;
    List<Option>? options;

    UpComMatche({
        this.id,
        this.catId,
        this.eventId,
        this.team1Image,
        this.team2Image,
        this.team1,
        this.team2,
        this.team1Slug,
        this.team2Slug,
        this.startDate,
        this.endDate,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.imageUrlTeam1,
        this.imageUrlTeam2,
        this.cat,
        this.event,
        this.questions,
        this.options,
    });

    factory UpComMatche.fromJson(Map<String, dynamic> json) => UpComMatche(
        id: json["id"],
        catId: json["cat_id"],
        eventId: json["event_id"],
        team1Image: json["team_1_image"],
        team2Image: json["team_2_image"],
        team1: json["team_1"],
        team2: json["team_2"],
        team1Slug: json["team_1_slug"],
        team2Slug: json["team_2_slug"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        imageUrlTeam1: json["image_url_team_1"],
        imageUrlTeam2: json["image_url_team_2"],
        cat: json["cat"] == null ? null : Category.fromJson(json["cat"]),
        event: json["event"] == null ? null : Category.fromJson(json["event"]),
        questions: json["questions"] == null ? [] : List<Question>.from(json["questions"]!.map((x) => Question.fromJson(x))),
        options: json["options"] == null ? [] : List<Option>.from(json["options"]!.map((x) => Option.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "cat_id": catId,
        "event_id": eventId,
        "team_1_image": team1Image,
        "team_2_image": team2Image,
        "team_1": team1,
        "team_2": team2,
        "team_1_slug": team1Slug,
        "team_2_slug": team2Slug,
        "start_date": startDate?.toIso8601String(),
        "end_date": endDate?.toIso8601String(),
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "image_url_team_1": imageUrlTeam1,
        "image_url_team_2": imageUrlTeam2,
        "cat": cat?.toJson(),
        "event": event?.toJson(),
        "questions": questions == null ? [] : List<dynamic>.from(questions!.map((x) => x.toJson())),
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
    };
}

class Option {
    int? id;
    String? questionId;
    String? matchId;
    String? optionName;
    String? investAmount;
    String? returnAmount;
    String? minAmo;
    String? ratio1;
    String? ratio2;
    String? betLimit;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;

    Option({
        this.id,
        this.questionId,
        this.matchId,
        this.optionName,
        this.investAmount,
        this.returnAmount,
        this.minAmo,
        this.ratio1,
        this.ratio2,
        this.betLimit,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        questionId: json["question_id"],
        matchId: json["match_id"],
        optionName: json["option_name"],
        investAmount: json["invest_amount"],
        returnAmount: json["return_amount"],
        minAmo: json["min_amo"],
        ratio1: json["ratio1"],
        ratio2: json["ratio2"],
        betLimit: json["bet_limit"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "question_id": questionId,
        "match_id": matchId,
        "option_name": optionName,
        "invest_amount": investAmount,
        "return_amount": returnAmount,
        "min_amo": minAmo,
        "ratio1": ratio1,
        "ratio2": ratio2,
        "bet_limit": betLimit,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class Question {
    int? id;
    String? matchId;
    String? question;
    String? result;
    String? limit;
    DateTime? endTime;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;

    Question({
        this.id,
        this.matchId,
        this.question,
        this.result,
        this.limit,
        this.endTime,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        matchId: json["match_id"],
        question: json["question"],
        result: json["result"],
        limit: json["limit"],
        endTime: json["end_time"] == null ? null : DateTime.parse(json["end_time"]),
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "match_id": matchId,
        "question": question,
        "result": result,
        "limit": limit,
        "end_time": endTime?.toIso8601String(),
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
