import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<ProfileOption> lists = [
    ProfileOption(iconData: Icons.person, optionName: 'Account'),
    ProfileOption(iconData: Icons.verified, optionName: 'Privacy '),
    ProfileOption(iconData: Icons.task, optionName: 'Task'),
    ProfileOption(iconData: Icons.archive_outlined, optionName: 'Archive'),
    ProfileOption(iconData: Icons.question_mark, optionName: 'FAQ'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/background/tulsie1.jpg',
                        height: 98,
                        width: 98,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Tulsie Chandra Barman',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('tulsieroyt@gmail.com'),
                ],
              ),
            ),
            const SizedBox(height: 50),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: lists.length,
              itemBuilder: (context, index) {
                final option = lists[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                option.iconData,
                                size: 26,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                option.optionName,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.redAccent,
              ),
              child: const Text(
                'Log out',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileOption {
  final IconData iconData;
  final String optionName;

  ProfileOption({required this.iconData, required this.optionName});
}
