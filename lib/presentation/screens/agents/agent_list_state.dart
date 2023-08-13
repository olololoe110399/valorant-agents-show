import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_agents_show/shared/app_exception.dart';
import 'package:valorant_agents_show/domain/model/agent.dart';

part 'agent_list_state.freezed.dart';

@freezed
abstract class AgentListState with _$AgentListState {
  const factory AgentListState.initial() = AgentListInitial;
  const factory AgentListState.loading() = AgentListLoading;
  const factory AgentListState.failure(AppException exception) =
      AgentListFailure;
  const factory AgentListState.success(List<Agent> data) = AgentListSuccess;
}
