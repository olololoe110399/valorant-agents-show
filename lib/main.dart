import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valorant_agents_show/theme/app_theme.dart';
import 'package:valorant_agents_show/ui/agents/agent_list_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Valorant Agents',
      home: ValorantAgentsTheme(
        darkTheme: false,
        dynamicColor: false,
        contentBuilder: (context) {
          return const AgentListScreen();
        },
      ),
    );
  }
}
