import 'package:cockies_ui/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/avatar.dart';
import '../widgets/personal_infor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Avatar(),
                  PersonalInfo()
                ],
              ),
            ],
          ),
        ));
  }
}


