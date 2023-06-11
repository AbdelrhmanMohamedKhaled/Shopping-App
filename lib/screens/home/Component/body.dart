import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/details_screen.dart';

import '../../../constraints.dart';
import 'categories.dart';
import '../../../models/product.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: kDefaultPadding,
                mainAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreens(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
