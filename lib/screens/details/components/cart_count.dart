import 'package:flutter/material.dart';

import '../../../constraints.dart';

class CartCount extends StatefulWidget {
  const CartCount({super.key});

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLineButton(
          icon: Icons.remove,
          press: () {
           if(numOfItems > 1) {
             setState(() {
              numOfItems--;
            });
           }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutLineButton(icon: Icons.add, press: () {
          setState(() {
            numOfItems++;
          });
        })
      ],
    );
  }

  SizedBox buildOutLineButton(
      {required IconData icon, required void Function()? press}) {
    return SizedBox(
      height: 40,
      width: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
