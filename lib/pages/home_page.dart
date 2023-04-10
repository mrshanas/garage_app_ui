import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:garage_app_ui/utils/constants.dart';
import 'package:garage_app_ui/widgets/service_card.dart';
import '../widgets/service_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColors.kPrimaryColor,
                  ),
                  Text(
                    'California',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.expand_more_rounded,
                    color: Colors.grey[700],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          const SizedBox(width: 20),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: AppColors.kPrimaryColor.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            child: GNav(
              activeColor: AppColors.kWhite,
              duration: const Duration(milliseconds: 400),
              iconSize: 24,
              gap: 8,
              rippleColor: AppColors.kPrimaryColor,
              tabBackgroundColor: AppColors.kPrimaryColor,
              padding: const EdgeInsets.all(14),
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.directions_car_outlined,
                  text: 'Cars',
                ),
                GButton(
                  icon: Icons.construction_outlined,
                  text: 'Services',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                )
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: AppColors.kLightGray,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      style: const TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Search services',
                        hintStyle: const TextStyle(fontSize: 20),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.kDarkGray,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.tune,
                      color: AppColors.kWhite,
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),
            // services banner

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColors.kLightGray,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Get your services from \nyour location',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 140,
                          height: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: AppColors.kPrimaryColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: Text(
                              'Find Service',
                              style: TextStyle(
                                color: AppColors.kWhite,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Image.asset(
                        'assets/images/garage.png',
                      ),
                    )
                  ],
                ),
              ),
            ),

            // service cards
            const SizedBox(
              height: 20,
            ),

            const Text(
              'Book a service',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: const [
                Expanded(
                  child: ServiceCard(
                    serviceName: 'Vehicle Service',
                    icon: Icons.construction_outlined,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ServiceCard(
                    serviceName: 'RSA Service',
                    icon: Icons.toys_outlined,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Near you',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),

            // List tiles
            const ServiceTile(
              title: 'Gotham Car Reparation',
              location: 'House 57, RoadB, Block A, Birmingham',
              rating: 4.5,
            ),
            const ServiceTile(
              title: 'Gotham Car Reparation',
              location: 'House 57, RoadB, Block A, Birmingham',
              rating: 4.5,
            ),
            const ServiceTile(
              title: 'Gotham Car Reparation',
              location: 'House 57, RoadB, Block A, Birmingham',
              rating: 4.5,
            ),
          ],
        ),
      ),
    );
  }
}
