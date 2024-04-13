// To parse this JSON data, do
//
//     final interviewQuestions = interviewQuestionsFromJson(jsonString);

import 'dart:convert';

InterviewQuestions interviewQuestionsFromJson(String str) => InterviewQuestions.fromJson(json.decode(str));

String interviewQuestionsToJson(InterviewQuestions data) => json.encode(data.toJson());

class InterviewQuestions {
    Map<String, String>? questions;

    InterviewQuestions({
        this.questions,
    });

    factory InterviewQuestions.fromJson(Map<String, dynamic> json) => InterviewQuestions(
        questions: Map.from(json["questions"]!).map((k, v) => MapEntry<String, String>(k, v)),
    );

    Map<String, dynamic> toJson() => {
        "questions": Map.from(questions!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}
