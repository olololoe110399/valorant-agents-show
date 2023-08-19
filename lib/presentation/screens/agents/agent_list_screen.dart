import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import 'package:valorant_agents_show/domain/model/agent.dart';
import 'package:valorant_agents_show/presentation/di/presentation_module.dart';
import 'package:valorant_agents_show/presentation/screens/agents/agent_list_event.dart';

class AgentListScreen extends HookConsumerWidget {
  const AgentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(agentListViewModelProvider);

    useEffect(() {
      Future.microtask(
        () => ref
            .read(agentListViewModelProvider.notifier)
            .addEvent(const AgentListScreenInitiated()),
      );
      return null;
    }, []);

    return Scaffold(
      body: viewModel.when(
        initial: () => const SizedBox(),
        loading: () => const Center(child: CircularProgressIndicator()),
        failure: (exception) => Text('Error: ${exception.message}'),
        success: (agents) => AgentListView(agents: agents),
      ),
    );
  }
}

class AgentListView extends HookWidget {
  final List<Agent> agents;

  const AgentListView({Key? key, required this.agents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(
      initialPage: agents.length ~/ 2,
    );
    final agentViewerController = usePageController(
      initialPage: agents.length ~/ 2,
      viewportFraction: 1 / 3,
    );

    final currentPage = useState(
      (agents.length ~/ 2).toDouble(),
    );

    final currentAgentViewer = useState(
      (agents.length ~/ 2).toDouble(),
    );
    final isClicking = useState(false);

    useEffect(() {
      void currentAgentViewerCallback() async {
        if (isClicking.value) return;
        final page = agentViewerController.page?.toDouble() ?? 0.0;
        if (page.toInt() != currentPage.value.toInt()) {
          await pageController.animateToPage(
            page.toInt(),
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
        currentAgentViewer.value = page;
      }

      void pageCallback() async {
        final page = pageController.page?.toDouble() ?? 0.0;
        if (page.toInt() != currentAgentViewer.value.toInt()) {
          await agentViewerController.animateToPage(
            page.toInt(),
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
        currentPage.value = page;
      }

      agentViewerController.addListener(currentAgentViewerCallback);
      pageController.addListener(pageCallback);
      return () {
        pageController.removeListener(pageCallback);
        agentViewerController.removeListener(currentAgentViewerCallback);
      };
    }, []);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AgentPager(
          listState: pageController,
          items: agents,
          page: currentPage,
        ),
        SafeArea(
          child: AgentsPicker(
            listState: agentViewerController,
            items: agents,
            page: currentAgentViewer,
            onTap: (index) async {
              isClicking.value = true;
              if (index.toInt() != currentPage.value.toInt()) {
                await pageController.animateToPage(
                  index.toInt(),
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.linear,
                );
              }
              currentAgentViewer.value = index.toDouble();
              isClicking.value = false;
            },
          ),
        ),
      ],
    );
  }
}

class AgentPager extends StatelessWidget {
  final PageController listState;
  final List<Agent> items;
  final ValueNotifier<double> page;

  const AgentPager({
    Key? key,
    required this.listState,
    required this.items,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.background,
    ];

    return PageView.builder(
      controller: listState,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final agentIndex = index % items.length;
        final agent = items[agentIndex];
        final pageOffset = (page.value - index).abs();
        final boxSize = pageOffset != 0.0 ? 0.9 : 1.0;
        final yOffset = pageOffset != 0.0 ? -100.0 : 0.0;
        final textAlpha = pageOffset != 0.0 ? 0.0 : 1.0;
        final textSize = pageOffset != 0.0 ? 0.0 : 40.0;

        return Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: Opacity(
                opacity: 0.4,
                child: Lottie.asset(
                  'assets/raw/bg.json',
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.center,
              transform: Matrix4.translationValues(0, yOffset, 0),
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
                transform: Matrix4.identity()
                  ..scale(pageOffset != 0.0 ? 0.8 : 1.0),
                child: AnimatedOpacity(
                  opacity: pageOffset != 0.0 ? 0.1 : 0.3,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear,
                  child: Center(
                    child: (agent.background ?? '').isNotEmpty
                        ? Image.network(agent.background!)
                        : const SizedBox(),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.only(top: 50),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: AnimatedOpacity(
                    opacity: textAlpha,
                    duration: const Duration(milliseconds: 200),
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: TextStyle(
                        fontSize: textSize,
                      ),
                      child: Text(
                        agent.displayName?.toUpperCase() ?? '',
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "valorant",
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              transform: Matrix4.identity()..scale(boxSize),
              alignment: Alignment.center,
              child: (agent.fullPortrait ?? "").isNotEmpty
                  ? Image.network(
                      agent.fullPortrait!,
                      fit: BoxFit.fill,
                    )
                  : const SizedBox(),
            ),
          ],
        );
      },
    );
  }
}

extension NumExtensions on num {
  bool get isInt => (this % 1) == 0;
}

class AgentsPicker extends StatelessWidget {
  final PageController listState;
  final List<Agent> items;
  final ValueNotifier<double> page;
  final void Function(int)? onTap;

  const AgentsPicker({
    Key? key,
    required this.listState,
    required this.items,
    required this.page,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const boxSize = 80.0;
    final itemWidth = screenWidth / 3;

    return SizedBox(
      height: boxSize,
      child: PageView.builder(
        controller: listState,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final pageOffset = (page.value - index).abs();
          final sizeInside = pageOffset == 0 ? 80.0 : 50.0;
          final borderColor = pageOffset == 0
              ? Theme.of(context).colorScheme.primary.withAlpha(204)
              : Theme.of(context).colorScheme.background;
          final borderWidth = pageOffset == 0 ? 3 : 0;
          final agentIndex = index % items.length;
          final agent = items[agentIndex];

          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(horizontal: itemWidth * 0.2),
            margin: EdgeInsets.all(pageOffset.isInt
                ? pageOffset == 0
                    ? 0.0
                    : 8.0
                : 8.0),
            child: GestureDetector(
              onTap: () => onTap?.call(index),
              child: Container(
                width: sizeInside,
                height: sizeInside,
                decoration: BoxDecoration(
                  color: const Color(0xFF183040),
                  border: Border.all(
                    width: borderWidth.toDouble(),
                    color: borderColor,
                  ),
                ),
                child: Container(
                  width: sizeInside,
                  height: sizeInside,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        agent.displayIcon!,
                      ),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(
                        page.value == index ? 0.0 : 0.3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
