import 'package:cockies_ui/colors.dart';
import 'package:cockies_ui/models/cookies.dart';
import 'package:cockies_ui/pages/widgets/container_arrow.dart';
import 'package:cockies_ui/pages/widgets/premium.dart';
import 'package:flutter/material.dart';

class CookieCard extends StatelessWidget {
  const CookieCard({super.key, required this.cookie});

  final Cookie cookie;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.16;
    var cardSize = size.height * 0.20;
    return Stack(
      clipBehavior: Clip.none,
      children: [ Container(
        width: cardSize,
        height: cardSize,
        decoration: const BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(75),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 32, bottom: 16, right: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cookie.name,
                style: const TextStyle(color: Colors.white, fontSize: 20,),
              ),
              const Premium(),
              Text(
                cookie.price,
                style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
        Positioned(
          top: -(cookieSize - 32),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            width: cookieSize,
            height: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
            child: ContainerArrow())
    ],
    );
  }
}


