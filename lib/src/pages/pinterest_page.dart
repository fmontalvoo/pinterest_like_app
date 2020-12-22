import 'package:flutter/material.dart';
import 'package:pinterest_like_app/src/widgets/pinterest_grid.dart';

// import 'package:pinterest_like_app/src/widgets/pinterest_grid.dart';
import 'package:pinterest_like_app/src/widgets/pinterest_menu.dart';
import 'package:pinterest_like_app/src/widgets/pinterest_menu_item.dart';

class PinterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PinterestGrid(),
          PinterestMenu(
            items: [
              PinterestMenuItem(icon: Icon(Icons.camera), onPressed: () {}),
              PinterestMenuItem(icon: Icon(Icons.search), onPressed: () {}),
              PinterestMenuItem(
                  icon: Icon(Icons.notifications), onPressed: () {}),
              PinterestMenuItem(
                  icon: Icon(Icons.account_circle), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
