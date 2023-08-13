import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_agents_show/data/remote/agents_api_services.dart';

final dioProvider = Provider<Dio>((_) => Dio());

final agentsApiServicesProvider = Provider<AgentsApiServices>(
  (ref) => AgentsApiServices(ref.read(dioProvider)),
);
