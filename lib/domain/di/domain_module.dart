import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_agents_show/data/agents_repository_ipml.dart';
import 'package:valorant_agents_show/data/di/data_module.dart';
import 'package:valorant_agents_show/domain/repository/agents_repository.dart';

final agentsRepositoryProvider = Provider<AgentsRepository>((ref) {
  final api = ref.read(agentsApiServicesProvider);
  return AgentsRepositoryIpml(api);
});
