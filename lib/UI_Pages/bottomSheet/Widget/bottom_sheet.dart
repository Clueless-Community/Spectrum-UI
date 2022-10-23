import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({
    super.key,
  });

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final textController = TextEditingController();
  final amountController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  void _presentDayPicker() {
    showDatePicker(
            builder: ((context, child) {
              return Theme(
                data: ThemeData.light().copyWith(
                  primaryColor:const Color.fromARGB(255, 32, 20, 65),
                  colorScheme:
                      const ColorScheme.light(primary: Color.fromARGB(255, 39, 35, 80),),
                  buttonTheme:
                      const ButtonThemeData(textTheme: ButtonTextTheme.primary),
                ),
                child: child as Widget,
              );
            }),
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime.now())
        .then(
      (date) {
        if (selectedDate == DateTime.now()) {
          return;
        } else {
          setState(() {
            selectedDate = date as DateTime;
          });
        }
      },
    );
  }

  void submitData() {
    final enterText = textController.text;
    final enterAmount = double.parse(amountController.text);
    if (enterText.isEmpty || enterAmount < 0) {
      return;
    }
    Navigator.of(context).pop();
  
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return SizedBox(
          height: constraints.maxHeight * 0.6,
          child: SingleChildScrollView(
            child: SizedBox(
              height: constraints.maxHeight,
              child: Card(
                  child: Container(
                color: const Color.fromARGB(183, 238, 234, 234),
                child: Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.2,
                      child: TextField(
                        cursorColor: const Color.fromARGB(255, 94, 15, 163),
                        decoration: const InputDecoration(
                          labelText: "Text",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 57, 3, 105),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromARGB(183, 175, 162, 186),
                          )),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 57, 3, 105),
                            ),
                          ),
                        ),
                        controller: textController,
                        keyboardType: TextInputType.name,
                        onSubmitted: (_) => submitData(),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.2,
                      child: TextField(
                        cursorColor: const Color.fromARGB(255, 47, 11, 79),
                        decoration: const InputDecoration(
                            labelText: "Number",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 39, 35, 80),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(183, 175, 162, 186))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 57, 3, 105)))),

                        controller: amountController,
                        keyboardType: TextInputType.number,
                        onSubmitted: (_) =>
                            submitData(), 
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: submitData,
                            child: Text(
                              " Date: ${DateFormat.yMd().format(selectedDate)}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 39, 35, 80),
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: _presentDayPicker,
                            child: const Text(
                              "Chosse a date",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 33, 29, 71),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(1),
                      padding: const EdgeInsets.all(1),
                      height: constraints.maxHeight * 0.09,
                      width: constraints.maxWidth * 0.25,
                      child: ElevatedButton(
                        onPressed: submitData,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 33, 29, 71))),
                        child: const Text(
                          "Add",
                          style: TextStyle(
                            color: Color.fromARGB(255, 248, 248, 248),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ),
        );
      }),
    );
  }
}
