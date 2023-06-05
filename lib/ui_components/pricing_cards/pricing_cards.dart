import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/pricing_cards/All%20Pricing%20Cards/pricing_card/pricing_cards4.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';
import '../../theme/theme.dart';
import 'All Pricing Cards/pricing_card/pricing_cards1.dart';
import 'All Pricing Cards/pricing_card/pricing_cards3.dart';
import 'All Pricing Cards/pricing_card/pricing_cards2.dart';

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
    const PricingCard2(
      tier: 'FREE',
      supportingText:
      'For those who want to try our services with no commitment',
      price: '\$0',
      period: 'month',
      details: [
        'Easily receive new glasses on a regular basis',
        'More cost-effective than buying glasses individually',
      ],
      textColor: Color(0xff0f172a),
      cardColor: Colors.white,
      buttonColor: Color(0xff0f172a),
      buttonTextColor: Colors.white,
    ),
  ];
  List<Color?> pricingCardsColor = [null, null, null];

  final List<Widget> priceCards = [
  PricingCard3(
  tier: 'FREE',
    price: '\$0',
    period: 'month',
  cardColor: Colors.blueAccent.shade100,
  textColor: Color(0xff0f172a),
  buttonTextColor: Colors.white,
  buttonColor: Color(0xff0f172a),
  ),
  ];

  List<Color?> pricingCardColor = [null];

  final List<Widget> choosePlans = [
    PricingCard4(
      supportingText:
      'Plans for everyone and for every time period',
      price: '\$12',
      period: '12 month',
      price1: '\$0',
      period1: '1 month',
      price2: '\$6',
      period2: '6 month',
      cardColor: Color(0xff0f172a),
      textColor: Colors.white,
      buttonTextColor: Color(0xff0f172a),
      buttonColor: Colors.greenAccent.shade200,
    ),
  ];
  List<Color?> choosePlansColor = [null];


  List<Color?> pricingCardsColor = [null];
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
                                  setState(() {
                                    pricingCardsColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: pricingCardsColor[index],
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
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  priceCards.length,
                      (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: priceCards[index],
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
                                  favProviderModel.add(
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: priceCards[index],
                                    ),
                                  );
                                  setState(() {
                                    pricingCardColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: pricingCardColor[index],
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
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  choosePlans.length,
                      (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: choosePlans[index],
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
                                  favProviderModel.add(
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: choosePlans[index],
                                    ),
                                  );
                                  setState(() {
                                    choosePlansColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: choosePlansColor[index],
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
