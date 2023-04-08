import 'package:flutter/material.dart';
import '/ViewModel/Providers/provider_theme.dart';

class MyAppBar extends StatelessWidget {
  final Widget? leading;
  final bool centerTitle;
  final List<Widget>? actions;
  const MyAppBar({
    super.key,
    this.leading,
    this.centerTitle = true,
    this.actions
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AppBar(
        backgroundColor: DistributorTheme(context).colors.appBar,
        leading: leading,
        centerTitle: centerTitle,
        title: DistributorTheme(context).texts.mainTitle,
        actions: actions,
      ),
    );
  }
}
