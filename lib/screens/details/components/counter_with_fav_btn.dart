import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_count.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCount(),
        Container(
          height: 32,
          width: 32,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}
