import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:clipboard/clipboard.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<ContributorModel> contributorsList = [];
  bool showLoading = false; //to shows Loading
  @override
  void initState() {
    fetchRepoOwner();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: showLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //blue banner top
                  Container(
                    height: size.height * 0.23,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(53, 63, 178, 0.85),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Flexible(
                          flex: 2,
                          child: Text(
                            "About",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Image.asset(
                            "assets/about_page_top.png",
                          ),
                        ),
                      ],
                    ),
                  ),

                  // body
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 45, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Flutter UI Components",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(54, 64, 183, 0.13),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Text(
                              "Flutter UI Components are easy to use pre-designed plug and play collection of UI components which will be converted into a flutter package in the future. These make the layout of any iOS or Android application much quicker, simpler, affordable, compatible and easier to implement. Each one includes a variety of different widgets which can be customized to meet speicific needs of a project. Overall These will help you to save your time and efforts with a faster workflow. ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 21),
                        const Text(
                          "GitHub Link",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: size.height * 0.1,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                              width: 1.5,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(23, 8, 25, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Flexible(
                                  flex: 2,
                                  child: Text(
                                    "https://github.com/Clueless-Community/flutter-ui-components",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: GestureDetector(
                                    child: const Icon(Icons.copy),
                                    onTap: () {
                                      FlutterClipboard.copy(
                                        "https://github.com/Clueless-Community/flutter-ui-components",
                                      ).then((value) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text(
                                                  'Link copied to clipboard')),
                                        );
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 21),
                        const Text(
                          "Contributors",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Column(
                          children: [
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 0,
                                mainAxisSpacing: 0,
                                childAspectRatio: 1,
                              ),
                              itemCount: contributorsList
                                  .length, //increase this count to automatically add new contributors or set to the length of from where you are importing
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: InkWell(
                                    onTap: () async {
                                      Uri url = Uri.parse(
                                          contributorsList[index].url);
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: const Color.fromRGBO(
                                              53, 63, 178, 0.85),
                                          radius: 21,
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundImage: NetworkImage(
                                                contributorsList[index]
                                                    .avatarUrl),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            contributorsList[index].login,
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  fetchRepoOwner() async {
    changeLoading();
    final response = await http.get(Uri.parse(
        'https://api.github.com/repos/Clueless-Community/Spectrum-UI/contributors'));
    if (response.statusCode == 200) {
      final dynamic data = json.decode(response.body);
      data.forEach((val) {
        contributorsList.add(ContributorModel.fromJson(val));
      });
      changeLoading();
    } else {
      changeLoading();
      throw Exception('Failed to fetch repository information');
    }
  }

  //to toggle loading
  changeLoading() {
    setState(() {
      showLoading = !showLoading;
    });
  }
}

class ContributorModel {
  String login = "";
  String avatarUrl = "";
  String url = "";

  ContributorModel({this.login = "", this.avatarUrl = "", this.url = ""});

  ContributorModel.fromJson(Map<String, dynamic> json) {
    login = json['login'] ?? "";
    avatarUrl = json['avatar_url'] ?? "";
    url = json['html_url'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['login'] = login;
    data['avatar_url'] = avatarUrl;
    return data;
  }
}
