import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_app/constraints.dart';
import 'package:shop_app/models/product.dart';

import './body.dart';


class DetailsScreens extends StatelessWidget {
  final Product product;

  const DetailsScreens({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: builderAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar builderAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          // ignore: deprecated_member_use
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart.svg'),
        ),
        const SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}
