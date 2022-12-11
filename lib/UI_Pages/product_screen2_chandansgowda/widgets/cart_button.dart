import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            splashRadius: 25,
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          const Positioned(
              top: 5,
              right: 5,
              child: CircleAvatar(
                radius: 7,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text("12",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
