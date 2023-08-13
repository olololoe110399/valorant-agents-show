import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:valorant_agents_show/model/agent.dart';

import 'package:valorant_agents_show/model/base_response.dart';

part 'agents_api_services.g.dart';

@RestApi(baseUrl: 'https://valorant-api.com/v1/')
abstract class AgentsApiServices {
  factory AgentsApiServices(Dio dio, {String baseUrl}) = _AgentsApiServices;

  @GET("agents")
  Future<BaseResponse<List<Agent>>> getAllAgents();
}
