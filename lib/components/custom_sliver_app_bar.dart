import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const CustomSliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      title: Text('Totsuki Diner'),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag))
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
