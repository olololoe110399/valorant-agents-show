import 'package:json_annotation/json_annotation.dart';

part 'agent.g.dart';

@JsonSerializable()
class Agent {
  final String uuid;
  final String? displayName;
  final String? description;
  final String? displayIcon;
  final String? fullPortrait;
  final String? background;
  final List<String>? backgroundGradientColors;

  Agent({
    required this.uuid,
    this.displayName,
    this.description,
    this.displayIcon,
    this.fullPortrait,
    this.background,
    this.backgroundGradientColors,
  });

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);
  Map<String, dynamic> toJson() => _$AgentToJson(this);
}
