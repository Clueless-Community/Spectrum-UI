import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';
import '../../theme/theme.dart';
import 'All Pricing Cards/pricing_card/pricing_cards1.dart';

class PricingCardScreen extends StatefulWidget {
  const PricingCardScreen({super.key});

  @override
  State<PricingCardScreen> createState() => _PricingCardScreenState();
}

class _PricingCardScreenState extends State<PricingCardScreen> {
  final List<Widget> pricingCards = [
    const PricingCard1(
      tier: 'FREE',
      supportingText:
          'For those who want to try our services with no commitment',
      price: '\$0',
      period: 'month',
      details: [
        'Easily receive new glasses on a regular basis',
        'More cost-effective than buying glasses individually',
      ],
      cardColor: Color(0xff0f172a),
      textColor: Colors.white,
      buttonColor: Color(0xff00c2cb),
      buttonTextColor: Color(0xff0f172a),
    ),
  ];
  List<int> pricingCardsIndex = [60];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pricing Cards",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyTheme.lightBluishColor),
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  pricingCards.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: pricingCards[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(pricingCardsIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(pricingCardsIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
