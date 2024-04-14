import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:notilight/screens/switch_screen.dart";

void main() => runApp(
      const ProviderScope(
        child: SwitchScreen(),
      ),
    );

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Notilight",
      debugShowCheckedModeBanner: false,
      home: Placeholder(),
    );
  }
}
