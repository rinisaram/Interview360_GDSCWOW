import 'evaluation_repo.dart';
import 'interview_repo.dart';

class Repository {
  Repository(
     {
    required this.interviewRepo,
    required this.evaluationRepo,
  });
  final InterviewRepo interviewRepo;
  final EvaluationRepo evaluationRepo;
  
}
