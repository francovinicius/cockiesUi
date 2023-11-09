import 'package:cockies_ui/colors.dart';
import 'package:cockies_ui/pages/widgets/cookie.dart';
import 'package:flutter/material.dart';
import '../../models/cookies.dart';
import '../widgets/cart.dart';
import '../widgets/avatar.dart';
import '../widgets/cookies_bar.dart';
import '../widgets/personal_infor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatar(),
                  SizedBox(width: 16,),
                  PersonalInfo(),
                  Spacer(),
                  Cart(),
                ],
              ),
              const CookiesBar(),
              SizedBox(height: size.height * 0.16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: cookies.map((e) => CookieCard(cookie: e),).toList(),
              ),

            ],
          ),
        ));
  }
}






