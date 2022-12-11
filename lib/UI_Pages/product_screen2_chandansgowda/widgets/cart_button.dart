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
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          Positioned(
              top: 5,
              right: 5,
              child: CircleAvatar(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: FittedBox(
                    child: Text("12",style: TextStyle(color: Colors.white),),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                radius: 7,
              ))
        ],
      ),
    );
  }
}
