import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valorant_agents_show/domain/di/domain_module.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_view_model.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_state.dart';

final agentListViewModelProvider =
    StateNotifierProvider<AgentListScreenViewModel, AgentListState>((ref) {
  final repository = ref.read(agentsRepositoryProvider);
  return AgentListScreenViewModel(repository: repository);
});
