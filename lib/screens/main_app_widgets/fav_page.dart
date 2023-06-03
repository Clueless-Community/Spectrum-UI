import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> showMyDialog(int item) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => AlertDialog(
              title: const Text('Remove'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                        'Do you want to remove this widget from the favorites list?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Remove'),
                  onPressed: () {
                    favProviderModel.remove(item);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Consumer<FavoritesProvider>(
        builder: (context, favProviderModel, child) => SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Favourite",
                  style: TextStyle(
                    color: MyTheme.lightBluishColor,
                    fontSize: 24,
                    fontFamily: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                    ).fontFamily,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: favProviderModel.favs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showMyDialog(favProviderModel.favs[index]);
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Icon(
                              Icons.cancel,
                              size: 24,
                            ),
                          ),
                        ),
                        Center(
                          child: favProviderModel
                              .widgetMap[favProviderModel.favs[index]],
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
