import 'package:flutter_test/flutter_test.dart';
import 'package:valorant_agents_show/data/agents_repository.dart';
import 'package:valorant_agents_show/data/remote/agents_api_services.dart';
import 'package:valorant_agents_show/model/agent.dart';
import 'package:valorant_agents_show/model/base_response.dart';
import 'package:valorant_agents_show/utils/app_exception.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

class MockAgentsApiServices extends Mock implements AgentsApiServices {}

void main() {
  group('AgentsRepository Integration Tests', () {
    test('AgentsRepository should return agents on successful API call',
        () async {
      final mockApiServices = MockAgentsApiServices();
      final repository = AgentsRepositoryIpml(mockApiServices);

      when(mockApiServices.getAllAgents()).thenAnswer(
        (_) async => BaseResponse<List<Agent>>(
          status: 200,
          data: [], // Add test data here
        ),
      );

      final response = await repository.getAllAgents();
      expect(response.isRight(), true);
      expect(response.getOrElse(() => []), isA<List<Agent>>());
    });

    test('AgentsRepository should return AppException on API failure',
        () async {
      final mockApiServices = MockAgentsApiServices();
      final repository = AgentsRepositoryIpml(mockApiServices);

      when(mockApiServices.getAllAgents()).thenThrow(DioException(
        requestOptions: RequestOptions(path: 'agents'),
        response: Response(
          statusCode: 500,
          requestOptions: RequestOptions(path: 'agents'),
        ),
      ));

      final response = await repository.getAllAgents();
      expect(response.isLeft(), true);
      expect(response.fold((l) => l, (r) => null), isA<AppException>());
    });
  });
}
