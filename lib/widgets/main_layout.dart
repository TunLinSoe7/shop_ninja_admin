import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 10,
              height: 50,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10,),
            Text(title),
          ],
        ),
        const SizedBox(height: 20,),
        child,
      ],
    ));
  }
}
