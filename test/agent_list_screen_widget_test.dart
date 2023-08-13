import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_screen.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_state.dart';
import 'package:valorant_agents_show/shared/app_exception.dart';

void main() {
  group('Agent List Screen Widget Tests', () {
    testWidgets('Displays loading indicator when initializing',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: AgentListScreen(),
          ),
        ),
      );

      final loadingFinder = find.byType(CircularProgressIndicator);
      expect(loadingFinder, findsOneWidget);
    });

    testWidgets('Displays agents when loading successful',
        (WidgetTester tester) async {
      final agentListViewModelProvider = ProviderFamily<AgentListState, void>(
        (ref, _) => const AgentListSuccess([]),
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            agentListViewModelProvider.overrideWith(
              (ref, _) => const AgentListSuccess([]),
            ),
          ],
          child: const MaterialApp(
            home: AgentListScreen(),
          ),
        ),
      );

      final agentsPickerFinder = find.byType(AgentsPicker);
      final agentPagerFinder = find.byType(AgentPager);

      expect(agentsPickerFinder, findsOneWidget);
      expect(agentPagerFinder, findsOneWidget);
    });
  });

  testWidgets('Agent list screen displays error message on failure',
      (WidgetTester tester) async {
    final agentListViewModelProvider = ProviderFamily<AgentListState, void>(
      (ref, _) => AgentListFailure(
        AppException(
          statusCode: 500,
          message: 'Test Error',
          identifier: '',
        ),
      ),
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          agentListViewModelProvider.overrideWith(
            (ref, _) => AgentListFailure(
              AppException(
                statusCode: 500,
                message: 'Test Error',
                identifier: '',
              ),
            ),
          ),
        ],
        child: const MaterialApp(
          home: AgentListScreen(),
        ),
      ),
    );

    expect(find.text('Error: Test Error'), findsOneWidget);
  });
}
