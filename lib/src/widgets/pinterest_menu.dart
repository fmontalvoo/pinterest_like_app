import 'package:flutter/material.dart';
import 'package:pinterest_like_app/src/models/menu_item_model.dart';

import 'package:pinterest_like_app/src/widgets/pinterest_menu_item.dart';
import 'package:provider/provider.dart';

class PinterestMenu extends StatefulWidget {
  final List<PinterestMenuItem> items;

  const PinterestMenu({Key key, @required this.items}) : super(key: key);
  @override
  _PinterestMenuState createState() => _PinterestMenuState();
}

class _PinterestMenuState extends State<PinterestMenu> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 30.0,
      child: Container(
          width: size.width, child: Align(child: _buildContainer(size))),
    );
  }

  Container _buildContainer(Size size) {
    return Container(
      width: size.width * .5,
      height: 70.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black45, blurRadius: 10.0, spreadRadius: -2.5)
          ]),
      child: _buildItems(),
    );
  }

  Widget _buildItems() {
    return ChangeNotifierProvider(
      create: (_) => MenuItemModel(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
            widget.items.length,
            (index) => Expanded(
                  child: PinterestMenuItem.build(
                    index: index,
                    icon: widget.items[index].icon,
                    title: widget.items[index].title,
                    onPressed: widget.items[index].onPressed,
                  ),
                )),
      ),
    );
  }
}
