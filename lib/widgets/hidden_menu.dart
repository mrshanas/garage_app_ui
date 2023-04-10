import 'package:flutter/material.dart';
import 'package:garage_app_ui/widgets/menu_tile.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'package:garage_app_ui/utils/constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  SimpleHiddenDrawerController? controller;

  @override
  void didChangeDependencies() {
    controller = SimpleHiddenDrawerController.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: AppColors.kPrimaryColor,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MenuTile(
            onTap: () {
              controller?.setSelectedMenuPosition(0);
            },
            icon: Icons.home_outlined,
            text: 'Home Page',
          ),
          const SizedBox(
            height: 20,
          ),
          MenuTile(
            onTap: () {
              controller?.setSelectedMenuPosition(1);
            },
            icon: Icons.history_outlined,
            text: 'History',
          ),
          const SizedBox(
            height: 20,
          ),
          MenuTile(
            onTap: () {
              controller?.setSelectedMenuPosition(2);
            },
            icon: Icons.notifications_outlined,
            text: 'Notification',
          ),
          const SizedBox(
            height: 20,
          ),
          MenuTile(
            onTap: () {
              controller?.setSelectedMenuPosition(2);
            },
            icon: Icons.star_outline,
            text: 'Rate Us',
          ),
          const SizedBox(
            height: 20,
          ),
          MenuTile(
            onTap: () {
              controller?.setSelectedMenuPosition(2);
            },
            icon: Icons.logout_outlined,
            text: 'Sign Out',
          ),
          const SizedBox(
            height: 100,
          ),
          // Row(
          //   children: [
          //     Text(
          //       'Choose Language: ',
          //       style: TextStyle(
          //         color: AppColors.kWhite?.withOpacity(0.5),
          //         fontSize: 10,
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
