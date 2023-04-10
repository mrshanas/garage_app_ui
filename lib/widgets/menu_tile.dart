import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:garage_app_ui/utils/constants.dart';

class MenuTile extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String text;

  const MenuTile(
      {Key? key, required this.onTap, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 0,
        color: AppColors.kPrimaryColor,
        child: Container(
          width: 300,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            // borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColors.kWhite?.withOpacity(0.5),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  color: AppColors.kWhite?.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
