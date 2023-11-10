import 'package:flutter/material.dart';

class OffersBar extends StatelessWidget {
  const OffersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("Cookies", style: TextStyle(color: Colors.white, fontSize: 42,),),
        Text("Se more", style: TextStyle(color: Colors.orange, fontSize: 16,),),
      ],
    );
  }
}