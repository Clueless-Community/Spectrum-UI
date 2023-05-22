import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    return Center(
                      child: favProviderModel.favs[index],
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
