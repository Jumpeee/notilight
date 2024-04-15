import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:notilight/ui/viewmodels/switch_screen_viewmodel.dart";

final _viewModelProvider = ChangeNotifierProvider(
  (ref) => SwitchScreenViewModel(),
);

class SwitchButton extends ConsumerWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: AspectRatio(
        aspectRatio: 1,
        child: ElevatedButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              viewModel.isOn
                  ? Colors.redAccent
                  : const Color.fromARGB(255, 39, 255, 125),
            ),
            splashFactory: InkRipple.splashFactory,
            elevation: MaterialStateProperty.all(20),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(48)),
              ),
            ),
          ),
          onPressed: () => ref.read(_viewModelProvider).switchMode(),
          child: Text(
            viewModel.isOn ? "ON" : "OFF",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
