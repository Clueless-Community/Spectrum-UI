import 'package:flutter/material.dart';

class CustomWidgetButton extends StatelessWidget {
  const CustomWidgetButton(
      {super.key, required this.title, required this.onPressed});
  final String title;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffffeeee),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        splashColor: const Color.fromARGB(255, 189, 191, 239),
        onTap: () {
          onPressed!();
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff0e1445)),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: Color(0xff0e1445),
                  size: 25.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
