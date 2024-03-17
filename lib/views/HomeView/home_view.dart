import 'package:elearningapp/utils/colors.dart';
import 'package:elearningapp/views/HomeView/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    List<Map<String, dynamic>> categories =[
      {
        "icon": "assets/images/accounting.png",
        "name": "Accounting",
        "totalCourses": 16,
      },
      {
        "icon": "assets/images/Photography.jpg",
        "name": "Photography",
        "totalCourses": 72,
      },
      {
        "icon": "assets/images/Desining.jpg",
        "name": "Designing",
        "totalCourses": 120,
      },
      {
        "icon": "assets/images/marketing.jpg",
        "name": "Marketing",
        "totalCourses": 27,
      },
      {
        "icon": "assets/images/English.jpg",
        "name": "English",
        "totalCourses": 70,
      },
      {
        "icon": "assets/images/Appdev.jpg",
        "name": "Programming",
        "totalCourses": 170,
      },

    ];

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          homeAppbar(size), // Use const since HomeAppbar() is a const constructor
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore Categories',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Sell All',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.primaryColors,
                          ),
                        ),
                      ],
                    ),

                    GridView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

                      itemBuilder: (context, index) {
                        final data = categories[index];
                        return Container(
                          margin: const EdgeInsets.all(5.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x23000000), // Adjust opacity by changing the alpha value (33)
                                blurRadius: 7,
                                spreadRadius: 0,
                                offset: Offset(0, 4), // Offset to create the owo-like shadow effect
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                data['icon'],
                                width: 120,
                                height: 100,
                              ),
                              const SizedBox(height:1), // Add some space between the image and text
                              Text(
                                data['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold, // Adjust fontWeight as desired
                                  fontSize: 19, // Adjust fontSize as desired
                                ),
                              ),
                              const SizedBox(height: 1), // Add some space between the name and total courses
                              Text(
                                'Total Courses: ${data['totalCourses']}',
                                style: const TextStyle(
                                  fontSize: 15, // Adjust fontSize as desired
                                  color: Colors.grey, // Adjust color as desired
                                ),
                              ),
                            ],
                          ),

                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
