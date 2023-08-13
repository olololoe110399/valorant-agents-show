import 'package:dartz/dartz.dart';
import 'package:valorant_agents_show/domain/model/agent.dart';
import 'package:valorant_agents_show/shared/app_exception.dart';

abstract class AgentsRepository {
  Future<Either<AppException, List<Agent>>> getAllAgents();
}
