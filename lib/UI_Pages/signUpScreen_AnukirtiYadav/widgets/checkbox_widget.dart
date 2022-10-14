import 'package:flutter/material.dart';

class CheckBoxWidget<T> extends StatelessWidget {
  const CheckBoxWidget({
    Key? key,
    required this.text,
    this.value,
    this.onChanged,
    this.groupValue,
  }) : super(key: key);

  final String text;
  final T? value;
  final String? groupValue;
  final ValueChanged<T>? onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged!(value as T);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            height: 12,
            width: 12,
            color: value == groupValue
                ? const Color.fromARGB(255, 89, 200, 106)
                : const Color.fromARGB(255, 112, 102, 134),
            child: Center(
              child: Container(
                height: 12,
                width: 12,
                color: value == groupValue
                    ? const Color.fromARGB(255, 89, 200, 106)
                    : const Color.fromARGB(255, 112, 102, 134),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(255, 112, 102, 134),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
