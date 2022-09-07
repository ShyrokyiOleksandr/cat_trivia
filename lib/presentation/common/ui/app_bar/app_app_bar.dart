import 'package:cat_trivia/presentation/common/resources/assets/app_assets.dart';
import 'package:cat_trivia/presentation/common/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const AppAppBar({
    required this.title,
    this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AppAssets.icCat),
          const SizedBox(width: 8),
          Text(title),
          const SizedBox(width: 8),
          Image.asset(AppAssets.icCat),
        ],
      ),
      backgroundColor: AppColors.background,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
