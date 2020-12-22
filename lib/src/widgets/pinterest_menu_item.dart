import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:pinterest_like_app/src/models/menu_item_model.dart';

// ignore: must_be_immutable
class PinterestMenuItem extends StatelessWidget {
  int index = 0;
  final Widget icon;
  final Widget title;
  final void Function() onPressed;

  PinterestMenuItem.build({this.index, this.icon, this.title, this.onPressed});

  PinterestMenuItem({
    Key key,
    @required this.icon,
    this.title,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconThemeData defaultIconTheme = IconThemeData(
      color: Colors.black,
      size: 30.0,
    );
    IconThemeData selectedIconTheme = IconThemeData(
      color: Colors.blue,
      size: 45.0,
    );

    final selectedIndex = Provider.of<MenuItemModel>(context).getCurrentIndex;
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconTheme(
            data:
                (selectedIndex == index) ? selectedIconTheme : defaultIconTheme,
            child: icon,
          ),
          if (title != null) title
        ],
      ),
      onPressed: () {
        Provider.of<MenuItemModel>(context, listen: false).setCurrentIndex =
            index;
        onPressed();
      },
    );
  }
}
