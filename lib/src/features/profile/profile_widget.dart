import 'package:demo1/src/features/profile/bottom_navbar.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Profile',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://www.koimoi.com/wp-content/new-galleries/2021/01/varun-dhawan-opens-up-on-being-hero-of-the-masses-001.jpg',
                                    scale: 1.0),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'JHON DOE',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                const Text(
                                  '@johncars',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromARGB(
                                          230, 52, 174, 56)),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.0),
                                        child: Icon(
                                          Icons.golf_course,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '14 WINS',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 16, 14, 12),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Text('My Preference'),
                            SizedBox(
                              width: 190,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 4, 8, 2),
                        child: Divider(
                          color: Color.fromARGB(221, 165, 164, 164),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Text('My Subscription'),
                            SizedBox(
                              width: 178,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 4, 4, 2),
                        child: Divider(
                          color: Color.fromARGB(221, 165, 164, 164),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Text('Contact Support'),
                            SizedBox(
                              width: 178,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 6, 8, 8),
                        child: Divider(
                          color: Color.fromARGB(221, 165, 164, 164),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Row(
                          children: [
                            Text('Change Password'),
                            SizedBox(
                              width: 168,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Center(
              child: Column(
                children: [
                  Text('Please feel free to contact us for any'),
                  Text('queries,complainces and feedback')
                ],
              ),
            ),
          ],
        ),
        const Column(
          children: [
            SizedBox(
              height: 165,
            ),
            BottomNavBarWidget(),
          ],
        ),
      ],
    );
  }
}
