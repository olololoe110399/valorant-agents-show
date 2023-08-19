import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_list_event.freezed.dart';

abstract class AgentListEvent {
  const AgentListEvent();
}

@freezed
class AgentListScreenInitiated extends AgentListEvent
    with _$AgentListScreenInitiated {
  const factory AgentListScreenInitiated() = _AgentListScreenInitiated;
}
