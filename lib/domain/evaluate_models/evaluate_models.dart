// To parse this JSON data, do
//
//     final evaluateAnswersModels = evaluateAnswersModelsFromJson(jsonString);

import 'dart:convert';

EvaluateAnswersModels evaluateAnswersModelsFromJson(String str) => EvaluateAnswersModels.fromJson(json.decode(str));

String evaluateAnswersModelsToJson(EvaluateAnswersModels data) => json.encode(data.toJson());

class EvaluateAnswersModels {
    Map<String, Evaluation>? evaluations;

    EvaluateAnswersModels({
        this.evaluations,
    });

    factory EvaluateAnswersModels.fromJson(Map<String, dynamic> json) => EvaluateAnswersModels(
        evaluations: Map.from(json["evaluations"]!).map((k, v) => MapEntry<String, Evaluation>(k, Evaluation.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "evaluations": Map.from(evaluations!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class Evaluation {
    String? whyAreYouInterestedInBecomingAGdscLead;
    String? canYouShareAnExampleOfACommunityProjectYouHavePreviouslyWorkedOn;
    String? howWouldYouMotivateAndEncourageYourPeersToActivelyParticipateInGdscActivities;
    String? whatTechnicalSkillsDoYouPossessThatWouldBeBeneficialForLeadingAGdsc;
    String? howDoYouPlanToCollaborateWithIndustryExpertsToEnhanceTheLearningExperienceForGdscMembers;
    String? whatStrategiesWouldYouImplementToEnsureInclusivityAndDiversityWithinTheGdscCommunity;
    String? howDoYouPlanToMeasureTheSuccessAndImpactOfGdscActivitiesInYourUniversity;
    String? canYouDiscussAChallengingSituationYouHaveFacedInALeadershipRoleAndHowYouHandledIt;
    String? howWouldYouBalanceYourAcademicResponsibilitiesWithYourRoleAsAGdscLead;

    Evaluation({
        this.whyAreYouInterestedInBecomingAGdscLead,
        this.canYouShareAnExampleOfACommunityProjectYouHavePreviouslyWorkedOn,
        this.howWouldYouMotivateAndEncourageYourPeersToActivelyParticipateInGdscActivities,
        this.whatTechnicalSkillsDoYouPossessThatWouldBeBeneficialForLeadingAGdsc,
        this.howDoYouPlanToCollaborateWithIndustryExpertsToEnhanceTheLearningExperienceForGdscMembers,
        this.whatStrategiesWouldYouImplementToEnsureInclusivityAndDiversityWithinTheGdscCommunity,
        this.howDoYouPlanToMeasureTheSuccessAndImpactOfGdscActivitiesInYourUniversity,
        this.canYouDiscussAChallengingSituationYouHaveFacedInALeadershipRoleAndHowYouHandledIt,
        this.howWouldYouBalanceYourAcademicResponsibilitiesWithYourRoleAsAGdscLead,
    });

    factory Evaluation.fromJson(Map<String, dynamic> json) => Evaluation(
        whyAreYouInterestedInBecomingAGdscLead: json["Why are you interested in becoming a GDSC Lead?"],
        canYouShareAnExampleOfACommunityProjectYouHavePreviouslyWorkedOn: json["Can you share an example of a community project you have previously worked on?"],
        howWouldYouMotivateAndEncourageYourPeersToActivelyParticipateInGdscActivities: json["How would you motivate and encourage your peers to actively participate in GDSC activities?"],
        whatTechnicalSkillsDoYouPossessThatWouldBeBeneficialForLeadingAGdsc: json["What technical skills do you possess that would be beneficial for leading a GDSC?"],
        howDoYouPlanToCollaborateWithIndustryExpertsToEnhanceTheLearningExperienceForGdscMembers: json["How do you plan to collaborate with industry experts to enhance the learning experience for GDSC members?"],
        whatStrategiesWouldYouImplementToEnsureInclusivityAndDiversityWithinTheGdscCommunity: json["What strategies would you implement to ensure inclusivity and diversity within the GDSC community?"],
        howDoYouPlanToMeasureTheSuccessAndImpactOfGdscActivitiesInYourUniversity: json["How do you plan to measure the success and impact of GDSC activities in your university?"],
        canYouDiscussAChallengingSituationYouHaveFacedInALeadershipRoleAndHowYouHandledIt: json["Can you discuss a challenging situation you have faced in a leadership role and how you handled it?"],
        howWouldYouBalanceYourAcademicResponsibilitiesWithYourRoleAsAGdscLead: json["How would you balance your academic responsibilities with your role as a GDSC Lead?"],
    );

    Map<String, dynamic> toJson() => {
        "Why are you interested in becoming a GDSC Lead?": whyAreYouInterestedInBecomingAGdscLead,
        "Can you share an example of a community project you have previously worked on?": canYouShareAnExampleOfACommunityProjectYouHavePreviouslyWorkedOn,
        "How would you motivate and encourage your peers to actively participate in GDSC activities?": howWouldYouMotivateAndEncourageYourPeersToActivelyParticipateInGdscActivities,
        "What technical skills do you possess that would be beneficial for leading a GDSC?": whatTechnicalSkillsDoYouPossessThatWouldBeBeneficialForLeadingAGdsc,
        "How do you plan to collaborate with industry experts to enhance the learning experience for GDSC members?": howDoYouPlanToCollaborateWithIndustryExpertsToEnhanceTheLearningExperienceForGdscMembers,
        "What strategies would you implement to ensure inclusivity and diversity within the GDSC community?": whatStrategiesWouldYouImplementToEnsureInclusivityAndDiversityWithinTheGdscCommunity,
        "How do you plan to measure the success and impact of GDSC activities in your university?": howDoYouPlanToMeasureTheSuccessAndImpactOfGdscActivitiesInYourUniversity,
        "Can you discuss a challenging situation you have faced in a leadership role and how you handled it?": canYouDiscussAChallengingSituationYouHaveFacedInALeadershipRoleAndHowYouHandledIt,
        "How would you balance your academic responsibilities with your role as a GDSC Lead?": howWouldYouBalanceYourAcademicResponsibilitiesWithYourRoleAsAGdscLead,
    };
}
