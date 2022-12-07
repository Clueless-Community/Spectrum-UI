import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({Key? key}) : super(key: key);

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/product_screen_chandansgowda/apples.jpeg",
                    ),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back,size: 25,color: Colors.red,),
                focusColor: Colors.black,
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 40,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.red,),
                focusColor: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: const Offset(0, -4),
                        blurRadius: 8)
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Apple",
                      style: GoogleFonts.pacifico(fontSize: 50),
                    ),
                    Text(
                      "INR 150 per Kg",
                      style: GoogleFonts.openSans(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.redAccent, Colors.red]),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Text(
                        "Shipped directly from farmers",
                        style: GoogleFonts.cormorant(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              if (_quantity > 1) {
                                setState(() {
                                  --_quantity;
                                });
                              }
                            },
                            backgroundColor: Colors.white54,
                            child: const Icon(Icons.add),
                          ),
                          Text(
                            "$_quantity",
                            style: GoogleFonts.openSans(fontSize: 40),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                ++_quantity;
                              });
                            },
                            backgroundColor: Colors.redAccent,
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total",
                                style: GoogleFonts.openSans(fontSize: 25),
                              ),
                              Text(
                                "INR ${_quantity * 150}",
                                style: GoogleFonts.openSans(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.07,
                            width: MediaQuery.of(context).size.width*0.3,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,),
                              child: FittedBox(fit: BoxFit.scaleDown,child: Text("Add To Cart",maxLines:1,style: GoogleFonts.openSans(fontWeight: FontWeight.bold),)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
