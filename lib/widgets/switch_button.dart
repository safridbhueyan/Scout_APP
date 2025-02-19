import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({
    super.key,
    required this.isSwitchOn,
    required this.onChange,
  });

  final bool isSwitchOn;
  final ValueChanged<bool> onChange; // More idiomatic type for callback

  @override
  Widget build(BuildContext context) {
    return Switch(
      thumbIcon: WidgetStateProperty.all(
        const Icon(Icons.circle, size: 20, color: Colors.white),
      ),
      activeColor: Colors.green,
      inactiveTrackColor: const Color(0xFFC6CACD),
      activeTrackColor: const Color(0xFFFB6012),
      trackOutlineColor: WidgetStateColor.transparent,
      thumbColor: const WidgetStatePropertyAll<Color>(Colors.white),
      value: isSwitchOn,
      onChanged: onChange,
    );
  }
}