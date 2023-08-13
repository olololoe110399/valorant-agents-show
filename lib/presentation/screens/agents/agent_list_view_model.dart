import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_agents_show/domain/repository/agents_repository.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_state.dart';

class AgentListScreenViewModel extends StateNotifier<AgentListState> {
  final AgentsRepository repository;

  AgentListScreenViewModel({
    required this.repository,
  }) : super(const AgentListState.initial());

  Future<void> getAllAgents() async {
    state = const AgentListState.loading();

    final response = await repository.getAllAgents();

    state = await response.fold(
      (failure) => AgentListState.failure(failure),
      (agents) => AgentListState.success(agents),
    );
  }
}
