import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifit/core/enums/router_path.dart';

class CommonErrorPage extends StatelessWidget {
  const CommonErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 72, color: Colors.redAccent),
              const SizedBox(height: 16),
              Text(
                '404 Page Not Found',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'The page you are looking for doesn’t exist or may have been moved.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  while (context.canPop() == true) {
                    context.pop();
                  }
                  context.pushReplacement(RouterUrl.home.path);
                },
                icon: const Icon(Icons.home),
                label: const Text('Go Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
