import 'package:flutter/material.dart';
import 'package:equapp/widget/custom_appbar.dart';
import 'package:equapp/widget/custom_button.dart';

class EquipmetsPage extends StatefulWidget {
  const EquipmetsPage({super.key});

  @override
  State<EquipmetsPage> createState() => _DailyTaskPageState();
}

class _DailyTaskPageState extends State<EquipmetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // Pass the title to CustomAppBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 2,
          crossAxisSpacing: 16, //Horizantal spacing between items
          mainAxisSpacing: 16, // Vertical spacing between items
          padding: EdgeInsets.all(20), //Padding around the GridView
          children: [
            CustomButton(
                icon: Icons.check_circle_outline,
                label: "تتتطلب الفحص اليوم",
                onPressed: () {}),
            // SizedBox(
            //   width: 22,
            // ),
            CustomButton(
                icon: Icons.assignment,
                label: "النماذج اليومية",
                onPressed: () {}),
            CustomButton(
                icon: Icons.check_circle_outline,
                label: "خلال الشهر",
                onPressed: () {}),
            CustomButton(
                icon: Icons.check_circle_outline,
                label: "قائمة المعدات",
                onPressed: () {}),
            CustomButton(
                icon: Icons.check_circle_outline,
                label: "الأعمال التي تمت اليوم",
                onPressed: () {}),
          ],
        )),
      ),
    );
  }
}
