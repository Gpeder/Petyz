import 'package:flutter/material.dart';

class MainAnimatedListTile extends StatefulWidget {
  final Widget leading;
  final Widget title;
  final Widget? trailing;
  final VoidCallback onTap;
  final EdgeInsetsGeometry contentPadding;
  final double horizontalTitleGap;

  const MainAnimatedListTile({
    super.key,
    required this.leading,
    required this.title,
    this.trailing,
    required this.onTap,
    this.contentPadding = EdgeInsets.zero,
    this.horizontalTitleGap = 12,
  });

  @override
  State<MainAnimatedListTile> createState() => _MainAnimatedListTileState();
}

class _MainAnimatedListTileState extends State<MainAnimatedListTile> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        padding: EdgeInsets.only(left: _isPressed ? 6 : 0),
        child: ListTile(
          contentPadding: widget.contentPadding,
          horizontalTitleGap: widget.horizontalTitleGap,
          leading: widget.leading,
          title: widget.title,
          trailing: AnimatedPadding(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOut,
            padding: EdgeInsets.only(right: _isPressed ? 6 : 0),
            child: widget.trailing,
          ),
        ),
      ),
    );
  }
}
