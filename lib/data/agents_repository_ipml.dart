import 'package:dartz/dartz.dart';
import 'package:valorant_agents_show/data/remote/agents_api_services.dart';
import 'package:valorant_agents_show/domain/repository/agents_repository.dart';
import 'package:valorant_agents_show/shared/app_exception.dart';
import 'package:valorant_agents_show/domain/model/agent.dart';

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
