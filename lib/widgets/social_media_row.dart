import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void showMessage(BuildContext context, String name) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Anda memilih $name')));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => showMessage(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          color: Colors.pink,
          iconSize: 32,
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => showMessage(context, 'LinkedIn'),
          icon: const Icon(Icons.work),
          color: Colors.blue,
          iconSize: 32,
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => showMessage(context, 'GitHub'),
          icon: const Icon(Icons.code),
          color: Colors.black87,
          iconSize: 32,
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}
