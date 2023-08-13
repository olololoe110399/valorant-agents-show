import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_agents_show/di/app_module.dart';
import 'package:valorant_agents_show/data/remote/agents_api_services.dart';
import 'package:valorant_agents_show/utils/app_exception.dart';
import 'package:valorant_agents_show/model/agent.dart';

final agentsRepositoryProvider = Provider<AgentsRepository>((ref) {
  final api = ref.read(agentsApiServicesProvider);
  return AgentsRepositoryIpml(api);
});

abstract class AgentsRepository {
  Future<Either<AppException, List<Agent>>> getAllAgents();
}

class AgentsRepositoryIpml extends AgentsRepository {
  final AgentsApiServices _api;

  AgentsRepositoryIpml(this._api);

  @override
  Future<Either<AppException, List<Agent>>> getAllAgents() async {
    try {
      final eitherType = await handleException(
        () => _api.getAllAgents(),
      );

      return eitherType.fold(
        (exception) {
          return Left(exception);
        },
        (response) {
          return Right(response.data);
        },
      );
    } catch (e) {
      return Left(
        AppException(
          message: 'Unknown error occured',
          statusCode: 1,
          identifier: '${e.toString()}\nAgentsRepositoryIpml.getAllAgents',
        ),
      );
    }
  }
}
