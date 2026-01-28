import 'package:flutter/material.dart';

class PrimaryAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PrimaryAppbarWidget({
    required this.title,
    this.height = kToolbarHeight,
    this.centerTitle = true,
    this.titleSpacing = 0,
    this.titleColor,
    this.leading,
    this.actions,
    super.key,
  });

  final String title;
  final bool centerTitle;
  final double height;
  final double titleSpacing;
  final Color? titleColor;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 4,
      titleSpacing: titleSpacing,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      leading: leading,
      actions: actions,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: titleColor ?? Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
