import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/basic_radio_button.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/radio_button_with_custom_color.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/radio_button_with_horizontal_layout.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/radio_button_with_text_and_styles.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  final List<Widget> radios = [
    const BasicRadioButton(),
    const RadioButtonwithTextandStyles(),
    const RadioButtonwithCustomColor(),
    const RadioButtonwithHorizontalLayout(),
  ];

  List<int> radiosIndex = [10, 11, 12, 13];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  radiosIndex.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          width: double.infinity,
                          child: radios[index],
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
                                  favProviderModel.add(radiosIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(radiosIndex[index]))
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
            ],
          ),
        ),
      ),
    );
  }
}
