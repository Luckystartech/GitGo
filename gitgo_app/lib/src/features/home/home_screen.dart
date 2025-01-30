import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitgo_app/src/features/home/controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const gitgoColor = Colors.blueAccent;
    final width = MediaQuery.sizeOf(context).width;
    const double height = 40;
    const gitHubRepoUrl = 'https://github.com/Luckystartech/GitGo';
    const hngUrl = 'https://hng.tech/hire/flutter-developers';
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitGo App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('GitHub Repository')),
          Center(
            child: ElevatedButton.icon(
              onPressed: () async {
                try {
                  await UrlController.launchLink(gitHubRepoUrl);
                } catch (e) {
                  if (context.mounted) {
                    showMessage(context, message: e.toString());
                  }
                }
              },
              label: const Text('Go To GitHub Repository'),
              icon: const Icon(Icons.arrow_forward_outlined),
              iconAlignment: IconAlignment.end,
              style: ElevatedButton.styleFrom(
                backgroundColor: gitgoColor,
                foregroundColor: Colors.white,
                fixedSize: Size(width * 0.6, height),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(child: Text('HNG Hire - Flutter Developers')),
          Center(
            child: ElevatedButton.icon(
              onPressed: () async {
                try {
                  await UrlController.launchLink(hngUrl);
                } catch (e) {
                  if (context.mounted) {
                    showMessage(context, message: e.toString());
                  }
                }
              },
              label: const Text('Flutter Developers'),
              icon: const Icon(Icons.arrow_forward_outlined),
              iconAlignment: IconAlignment.end,
              style: ElevatedButton.styleFrom(
                backgroundColor: gitgoColor,
                foregroundColor: Colors.white,
                fixedSize: Size(width * 0.6, height),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showMessage(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
