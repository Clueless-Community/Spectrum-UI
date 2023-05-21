import 'package:flutter/material.dart';

class PricingCard1 extends StatefulWidget {
  const PricingCard1(
      {super.key,
      required this.tier,
      required this.supportingText,
      required this.price,
      required this.period,
      required this.details,
      required this.cardColor,
      required this.textColor,
      required this.buttonColor,
      required this.buttonTextColor});
  final Color cardColor;
  final Color textColor;
  final Color buttonTextColor;
  final Color buttonColor;
  final String tier;
  final String supportingText;
  final String price;
  final String period;
  final List<String> details;

  @override
  State<PricingCard1> createState() => _PricingCard1State();
}

class _PricingCard1State extends State<PricingCard1> {
  bool detailsTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.tier,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.supportingText,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      widget.price,
                      style: TextStyle(
                        color: widget.textColor,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '/${widget.period}',
                      style: TextStyle(
                        color: widget.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    detailsTapped = !detailsTapped;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: widget.textColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: widget.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            detailsTapped == false
                                ? Icons.keyboard_arrow_down_outlined
                                : Icons.keyboard_arrow_up_outlined,
                            color: widget.textColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: detailsTapped,
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.details.length,
                  itemBuilder: (context, index) {
                    return DetailsTile(
                        detailsTileContent: widget.details[index]);
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.buttonColor,
              minimumSize: const Size.fromHeight(50),
            ),
            child: Center(
              child: Text(
                'Get started',
                style: TextStyle(
                  color: widget.buttonTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    super.key,
    required this.detailsTileContent,
  });

  final String detailsTileContent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check_circle_outline,
              color: Color(0xff63d892),
            ),
          ),
          Expanded(
            child: Text(
              detailsTileContent,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
