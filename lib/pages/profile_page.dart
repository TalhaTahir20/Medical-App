import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:test10/pages/home_page.dart';

import '../util/appointment_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 25),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/jinroxen.jpeg'),
                            maxRadius: 50,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Talha Tahir',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'My Appoinments',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Appointments',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: const [
                          AppointmentCard(
                            drName: 'Dr. Albert',
                            fieldImage: 'assets/icons/vitamins.png',
                            imageName: 'assets/images/doctorOne.jpg',
                            specialist: 'Psychatrist',
                            time: '10:30 PM',
                          ),
                          AppointmentCard(
                            drName: 'Dr. Sarah',
                            fieldImage: 'assets/icons/tooth.png',
                            imageName: 'assets/images/doctorTwo.jpg',
                            specialist: 'Psychatrist',
                            time: '7:30 AM',
                          ),
                          AppointmentCard(
                            drName: 'Dr. Thomas McCoy',
                            fieldImage: 'assets/icons/heart1.png',
                            imageName: 'assets/images/doctorThree.jpg',
                            specialist: 'Psychatrist',
                            time: '6:30 PM',
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
