import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/cart_button.dart';
import '../widgets/icon_button_with_border.dart';

class SingleProductScreen2 extends StatelessWidget {
  const SingleProductScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              splashRadius: 25, onPressed: () {}, icon: const Icon(Icons.search)),
          const CartButton(),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: const BoxDecoration(color: Color.fromRGBO(61, 128, 175, 1)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    "Aristocratic Hand Bag",
                    style: GoogleFonts.poppins(color: Colors.white70),
                  ),
                  Text(
                    "Office Code",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: GoogleFonts.poppins(color: Colors.white70),
                          ),
                          Text(
                            "\$867",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.15),
                        offset: const Offset(0, -4),
                        blurRadius: 8)
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Color",
                              style: GoogleFonts.poppins(color: Colors.black45),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 2,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor:
                                      Color.fromRGBO(61, 128, 175, 1),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.brown,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.amber,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size",
                              style: GoogleFonts.poppins(color: Colors.black45),
                            ),
                            Text(
                              "1.5 ltr",
                              style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.",
                      style: GoogleFonts.poppins(color: Colors.black54),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButtonWithBorder(icon: Icons.remove,padding: const EdgeInsets.all(1),),
                        Text(
                          "1",
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        IconButtonWithBorder(icon: Icons.add,padding: const EdgeInsets.all(1),),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        IconButtonWithBorder(icon: Icons.add_shopping_cart_outlined ,padding: const EdgeInsets.all(14),),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(61, 128, 175, 1),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Text("BUY NOW",style: GoogleFonts.poppins(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: const Alignment(0.8, -0.35),
              child:
                  Image.asset("assets/product_screen2_chandansgowda/bag_1.png"))
        ],
      ),
    );
  }
}


