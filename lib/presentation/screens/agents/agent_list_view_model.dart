import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_agents_show/domain/repository/agents_repository.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_state.dart';

class AgentListScreenViewModel extends StateNotifier<AgentListState> {
  final AgentsRepository repository;

  AgentListScreenViewModel({
    required this.repository,
  }) : super(const AgentListState.initial());

  void getAllAgents() {
    state = const AgentListState.loading();

    repository
        .getAllAgents()
        .then(
          (response) => response.fold(
            (failure) => AgentListState.failure(failure),
            (agents) => AgentListState.success(agents),
          ),
        )
        .then((value) => state = value);
  }
}
