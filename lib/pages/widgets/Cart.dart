import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        width: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)
          ),
        ),
        child: const Column(
          children: [
            SizedBox(height: 18,),
            Text("6", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
            Text("Products", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),

          ],
        )
    );
  }
}
