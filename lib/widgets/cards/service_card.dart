import 'package:flutter/material.dart';

import 'package:garage_app_ui/utils/constants.dart';

class ServiceCard extends StatelessWidget {
  final String serviceName;
  final IconData icon;

  const ServiceCard({super.key, required this.serviceName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: AppColors.kPrimaryColor,
            ),
            const SizedBox(height: 20),
            Text(serviceName)
          ],
        ),
      ),
    );
  }
}
