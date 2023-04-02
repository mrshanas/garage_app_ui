import 'package:flutter/material.dart';
import 'package:garage_app_ui/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    color: kPrimaryColor,
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
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Services',
                          hintStyle: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.tune,
                  color: kPrimaryColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
