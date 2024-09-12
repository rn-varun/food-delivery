import 'package:flutter/material.dart';

class CustomeDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const CustomeDrawerTile(
      {super.key, required this.icon, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12.0, top: 10),
      child: ListTile(
        title: Text(text, style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Theme.of(context).colorScheme.inversePrimary
        ),),
        leading: Icon(icon, color: Theme.of(context).colorScheme.inversePrimary,),
        onTap: onTap,
      ),
    );
  }
}
