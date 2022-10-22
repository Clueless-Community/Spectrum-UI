import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/individual_design/widgets/custom_widget_button.dart';
import 'package:flutter_ui/screens/individual_design/widgets/show_code.dart';
import 'package:flutter_ui/screens/individual_design/widgets/show_developer.dart';
import 'package:flutter_ui/screens/individual_design/widgets/show_widget.dart';
import 'package:flutter_ui/screens/individual_design/widgets/source_code_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

// Use this Individual Design Widget to show your widget,widget code, your github id.
// Your just have to pass your github username, repo name, widget path in paths List and that widgt.

// For eg.
// IndividualDesign(
//           widgetname: "OnBoarding Screen",
//           owner: "sagardev2301",
//           repositryname: "flutter-ui-components",
//           branch: "master",
//           widgetPaths: const [
//             "lib/UI_Pages/onboardingUiPage_sagardev2301/onboarding_screen.dart",
//             "lib/UI_Pages/onboardingUiPage_sagardev2301/widget/bottomButton.dart",
//             "lib/UI_Pages/onboardingUiPage_sagardev2301/widget/onboarding_widget.dart",
//           ],
//           widget: OnBoardingScreen(
//             onPressed: (){},
//           ),
//         )

class IndividualDesign extends StatelessWidget {
  const IndividualDesign(
      {super.key,
      required this.owner,
      required this.repositryname,
      required this.branch,
      required this.widgetname,
      required this.widgetPaths,
      required this.widget,
      required this.image});
  final String owner;
  final String branch;
  final String repositryname;
  final String widgetname;
  final List<String> widgetPaths;
  final Widget widget;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widgetname,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffffeeee)),
                child: image,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LikeButton(
                        // TODO: Implement OnTap, what happens when like button is pressed
                        //onTap: ,
                        circleColor: CircleColor(
                            start: Colors.red, end: Colors.redAccent.shade400),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.red.shade300,
                          dotSecondaryColor: Colors.red.shade900,
                        ),
                        likeBuilder: ((isLiked) => FaIcon(
                              isLiked
                                  ? FontAwesomeIcons.solidHeart
                                  : FontAwesomeIcons.heart,
                              color: isLiked ? Colors.redAccent : Colors.black,
                            )),
                      ),
                      LikeButton(
                        // TODO: Implement OnTap, wherever you want to save saved widgets
                        //onTap: ,
                        circleColor: const CircleColor(
                            start: Color.fromARGB(255, 59, 13, 213),
                            end: Color.fromARGB(255, 7, 24, 91)),
                        bubblesColor: const BubblesColor(
                          dotPrimaryColor: Color.fromARGB(255, 93, 98, 246),
                          dotSecondaryColor: Color.fromARGB(255, 30, 3, 162),
                        ),
                        likeBuilder: ((isLiked) => FaIcon(
                              isLiked
                                  ? FontAwesomeIcons.solidBookmark
                                  : FontAwesomeIcons.bookmark,
                              color: isLiked
                                  ? const Color.fromARGB(255, 10, 20, 91)
                                  : Colors.black,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomWidgetButton(
                  title: "Preview",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowWidget(child: widget),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomWidgetButton(
                  title: "View Code",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowCode(
                          widgetname: widgetname,
                          child: SourceCodeView(
                            owner: owner,
                            repository: repositryname,
                            ref: branch,
                            paths: widgetPaths,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomWidgetButton(
                  title: "View Developer",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowDeveloper(
                          username: owner,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
