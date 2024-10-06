import 'package:equapp/pages/tasks_done_today.dart';
import 'package:equapp/widget/custom_appbar.dart';
import 'package:equapp/widget/custom_button.dart';

import 'package:flutter/material.dart';

class DailyTaskPage extends StatefulWidget {
  const DailyTaskPage({super.key});

  @override
  State<DailyTaskPage> createState() => _DailyTaskPageState();
}

class _DailyTaskPageState extends State<DailyTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(), // Pass the title to CustomAppBar
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("نماذج الأعمال اليومية"),
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text("الأعمال اليومية"),
                ),
                Row(
                  children: [
                    CustomButton(
                        icon: Icons.check_circle_outline,
                        label: "الأعمال التي تمت اليوم",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  TasksDoneTodayPage(),
                            ),
                          );
                        }),
                    SizedBox(
                      width: 22,
                    ),
                    CustomButton(
                        icon: Icons.assignment,
                        label: "تفاصيل الفحوصات",
                        onPressed: () {})
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
