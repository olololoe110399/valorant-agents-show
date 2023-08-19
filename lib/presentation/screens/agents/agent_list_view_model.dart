import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_agents_show/domain/repository/agents_repository.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_event.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_state.dart';

class AgentListScreenViewModel extends StateNotifier<AgentListState> {
  final AgentsRepository repository;

  AgentListScreenViewModel({
    required this.repository,
  }) : super(const AgentListState.initial());

  void addEvent(AgentListEvent event) {
    if (event is AgentListScreenInitiated) {
      _onAgentListInitial();
    } else {
      // TODO: Handle other events
    }
  }

  Future<void> _onAgentListInitial() async {
    state = const AgentListState.loading();

    final response = await repository.getAllAgents();

    state = response.fold(
      (failure) => AgentListState.failure(failure),
      (agents) => AgentListState.success(agents),
    );
  }
}
