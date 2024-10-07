import 'package:equapp/pages/daily_task.dart';
import 'package:equapp/pages/equipmets.dart';
import 'package:equapp/pages/login.dart';
import 'package:equapp/widget/custom_appbar.dart';
import 'package:equapp/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  String getCurrentDateTime() {
    return DateFormat('الوقت والتاريخ الحالي:  yyyy-MM-dd HH:mm')
        .format(DateTime.now()); // Format Date and Time
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: 450,
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 8, 129, 186),
                    const Color.fromARGB(255, 22, 41, 73)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'بياناتك : 955555 -اسم المستخدم',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    getCurrentDateTime(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'عضو من مجموعة : E',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'الصلاحية الحالية : موظف بدائرة الكهرباء',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 2,
              crossAxisSpacing: 16, //Horizantal spacing between items
              mainAxisSpacing: 16, // Vertical spacing between items
              padding: EdgeInsets.all(20), //Padding around the GridView
              children: [
                CustomButton(
                  label: 'المعدات',
                  icon: Icons.build,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const EquipmetsPage(),
                      ),
                    );
                  },
                ),
                CustomButton(
                  label: 'الأشعارات',
                  icon: Icons.notifications,
                  onPressed: () {},
                ),
                CustomButton(
                  label: 'الأعمال اليومية',
                  icon: Icons.task,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const DailyTaskPage(),
                      ),
                    );
                  },
                ),
                CustomButton(
                  label: 'Help',
                  icon: Icons.help,
                  onPressed: () {},
                ),
                CustomButton(
                  label: 'Logout',
                  icon: Icons.logout,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0, // Set this to control the selected tab
        onTap: (index) {
          // Handle navigation between tabs
        },
      ),
    );
  }
}
