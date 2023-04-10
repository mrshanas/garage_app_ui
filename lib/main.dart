import 'package:flutter/material.dart';
import 'package:garage_app_ui/pages/home_page.dart';
import 'package:garage_app_ui/utils/constants.dart';
import 'package:garage_app_ui/widgets/hidden_menu.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/simple_hidden_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Garage UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: AppColors.kPrimaryColor,
          ),
          primarySwatch: Colors.blue,
        ),
        home: SimpleHiddenDrawer(
          menu: const Menu(),
          screenSelectedBuilder: (position, controller) {
            Widget? screenCurrent;

            switch (position) {
              case 0:
                screenCurrent = const HomePage();
                break;
              case 1:
                screenCurrent = const HomePage();
                break;
              case 2:
                screenCurrent = const HomePage();
                break;
            }

            return Scaffold(
              backgroundColor: AppColors.kWhite,
              appBar: AppBar(
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(
                    Icons.sort,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    controller.toggle();
                  },
                ),
                backgroundColor: Colors.white,
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 0),
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
              body: screenCurrent,
            );
          },
        ));
  }
}
