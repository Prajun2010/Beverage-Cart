import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const ProfileListTile({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      trailing: const Icon(Icons.arrow_forward_rounded),
      onTap: onTap,
    );
  }
}
