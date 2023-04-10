import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ServiceTile extends StatelessWidget {
  final String title;
  final String location;
  final String time;
  final double rating;

  const ServiceTile(
      {Key? key,
      required this.title,
      required this.location,
      required this.rating,
      this.time = '8am - 5pm'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      minVerticalPadding: 10,
      leading: Container(
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Icon(
          Icons.blur_on,
          color: AppColors.kWhite,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.timelapse,
                color: AppColors.kPrimaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(time)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: AppColors.kPrimaryColor,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(rating.toString())
            ],
          )
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   height: 5,
          // ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(location),
        ],
      ),
    );
  }
}
