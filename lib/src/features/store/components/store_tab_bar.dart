import 'package:flutter/material.dart';

class StoreTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController? controller;
  final List<String> tabs;
  final ValueChanged<int>? onTap;

  const StoreTabBar({Key? key, this.controller, required this.tabs, this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      indicatorColor: Theme.of(context).primaryColor,
      labelColor: Theme.of(context).primaryColor,
      unselectedLabelColor: Colors.grey,
      labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      tabs: tabs.map((t) => Tab(text: t)).toList(),
      onTap: onTap,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight - 20);
}
