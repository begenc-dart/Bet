// To parse this JSON data, do
//
//     final matchDto = matchDtoFromJson(jsonString);

import 'dart:convert';

MatchDto matchDtoFromJson(String str) => MatchDto.fromJson(json.decode(str));

String matchDtoToJson(MatchDto data) => json.encode(data.toJson());

class MatchDto {
    List<Match>? matches;
    bool? success;

    MatchDto({
        this.matches,
        this.success,
    });

    factory MatchDto.fromJson(Map<String, dynamic> json) => MatchDto(
        matches: json["matches"] == null ? [] : List<Match>.from(json["matches"]!.map((x) => Match.fromJson(x))),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "matches": matches == null ? [] : List<dynamic>.from(matches!.map((x) => x.toJson())),
        "success": success,
    };
}

class Match {
    int? id;
    String? catId;
    String? eventId;
    dynamic team1Image;
    dynamic team2Image;
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
    Cat? cat;
    Cat? event;
    List<Question>? questions;
    List<Option>? options;

    Match({
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

    factory Match.fromJson(Map<String, dynamic> json) => Match(
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
        cat: json["cat"] == null ? null : Cat.fromJson(json["cat"]),
        event: json["event"] == null ? null : Cat.fromJson(json["event"]),
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

class Cat {
    int? id;
    String? name;
    String? slug;
    String? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? icon;
    String? catId;
    String? key;

    Cat({
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

    factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        icon: json["icon"],
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
        "icon": icon,
        "cat_id": catId,
        "key": key,
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
