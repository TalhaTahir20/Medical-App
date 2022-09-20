import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:test10/pages/profile_page.dart';
import 'package:test10/util/doctor_category.dart';

import '../util/category_card.dart';
import '../util/doctorlist_seeall.dart';
import '../util/hello_username.dart';
import '../util/howdo_youfeel.dart';
import '../util/search_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const HelloUserName(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[100],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const HowDoYouFeel(),
                  const SizedBox(
                    height: 25,
                  ),
                  // search textfield
                  const SearchTextField(),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoryCard(
                          iconImagePath: 'assets/icons/white-teeth.png',
                          categoryName: 'Dentist',
                        ),
                        CategoryCard(
                          iconImagePath: 'assets/icons/heart1.png',
                          categoryName: 'Heart Surgeon',
                        ),
                        CategoryCard(
                          iconImagePath: 'assets/icons/doctor.png',
                          categoryName: 'Surgeon',
                        ),
                        CategoryCard(
                          iconImagePath: 'assets/icons/vitamins.png',
                          categoryName: 'Health Specialist',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const DoctorListSeeAll(),
                  const SizedBox(
                    height: 5,
                  ),

                  Flexible(
                    child: ListView(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        DoctorCategory(
                          doctorImage: 'assets/images/doctorOne.jpg',
                          doctorName: 'Dr. Albert',
                          doctorProfession: 'Surgeon, 5 y.e',
                          rating: '4.2',
                        ),
                        DoctorCategory(
                          doctorImage: 'assets/images/doctorTwo.jpg',
                          doctorName: 'Dr. Sarah',
                          doctorProfession: 'Dentist, 10 y.e',
                          rating: '4.9',
                        ),
                        DoctorCategory(
                          doctorImage: 'assets/images/doctorThree.jpg',
                          doctorName: 'Dr. Thomas McCoy',
                          doctorProfession: 'Pharmacist, 7 y.e',
                          rating: '4.5',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffffe0f4),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 5,
            bottom: 5,
          ),
          child: GNav(
            rippleColor: Colors.pink[800]!,
            hoverColor: Colors.grey[700]!,
            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder:
                Border.all(color: Colors.deepPurple[100]!, width: 1),
            tabBorder: Border.all(color: const Color(0xffffe0f4), width: 1),
            tabShadow: const [
              BoxShadow(color: Color(0xffffe0f4), blurRadius: 8),
            ],
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 1500),
            activeColor: Colors.purple,
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            iconSize: 24,
            color: Colors.grey[800],
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.medical_information,
                text: 'Doctors',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
