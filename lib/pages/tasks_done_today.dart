import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:equapp/widget/custom_appbar.dart';

class TasksDoneTodayPage extends StatefulWidget {
  const TasksDoneTodayPage({super.key});

  @override
  State<TasksDoneTodayPage> createState() => _TasksDoneTodayPageState();
}

class _TasksDoneTodayPageState extends State<TasksDoneTodayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(), // Pass the title to CustomAppBar
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                        ' المعدات التي تم فحصها اليوم (${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now())})')
                  ],
                )
              ],
            )));
  }
}
