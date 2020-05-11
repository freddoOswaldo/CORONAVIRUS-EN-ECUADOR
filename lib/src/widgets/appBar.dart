import 'package:covid19_model/src/utils/colors.dart';
import 'package:covid19_model/src/utils/custom_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Function tap;
  final Widget iconButton;
  CustomAppBar({this.tap,this.iconButton});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      leading:iconButton,
      actions: [
        IconButton(icon: Icon(CustomIcon.search, size: 17.5), onPressed: tap)
      ],
      iconTheme: IconThemeData(color: primaryColor),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
