import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../themes/themes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            final tabsRouter = AutoTabsRouter.of(context);
            tabsRouter.setActiveIndex(0);
          }),
      title: Text(
        title,
        style: AppStyles.text28PxSemiBold,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
