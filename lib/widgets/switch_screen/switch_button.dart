import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

final _modeProvider = StateProvider<bool>((ref) => false);

class SwitchButton extends ConsumerWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOn = ref.watch(_modeProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: AspectRatio(
        aspectRatio: 1,
        child: ElevatedButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              isOn ? Colors.red : Colors.green,
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
          onPressed: () => ref.read(_modeProvider.notifier).state = !isOn,
          child: Text(
            isOn ? "ON" : "OFF",
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
