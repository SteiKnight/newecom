import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String text;
  const MyAppbar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      backgroundColor: Colors.transparent,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      centerTitle: true,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
