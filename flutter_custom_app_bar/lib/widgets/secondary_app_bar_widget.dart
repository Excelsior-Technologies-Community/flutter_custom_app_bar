import 'package:flutter/material.dart';

class SecondaryAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SecondaryAppbarWidget({
    required this.title,
    this.height = kToolbarHeight,
    this.centerTitle = true,
    this.titleSpacing = 0,
    this.titleColor,
    this.actions,
    super.key,
  });

  final String title;
  final bool centerTitle;
  final double height;
  final double titleSpacing;
  final Color? titleColor;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: titleSpacing,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      actions: actions,
      title: centerTitle
          ? Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: titleColor ?? Colors.black,
        ),
      )
          : Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: titleColor ?? Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
