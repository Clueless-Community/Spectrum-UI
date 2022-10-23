import 'package:flutter/material.dart';

class DetailCardWidget extends StatelessWidget {
  const DetailCardWidget({
    super.key,
    required this.leading,
    required this.title,
    required this.stepDetail,
    required this.color,
  });

  final Icon leading;
  final String title;
  final String stepDetail;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: double.infinity,
        width: 160,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _leadingIcon(),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                _detailRow(context),
                const SizedBox(
                  width: 40,
                  child: Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ]),
        ),
      ),
    );
  }

  Padding _leadingIcon() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        padding: const EdgeInsets.all(8),
        child: leading,
      ),
    );
  }

  Row _detailRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            stepDetail,
            overflow: TextOverflow.clip,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 20,
                ),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_outlined)),
        )
      ],
    );
  }
}
