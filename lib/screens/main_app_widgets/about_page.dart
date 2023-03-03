import 'package:flutter/material.dart';

class AboutProjectPage extends StatefulWidget {
  const AboutProjectPage({super.key});

  @override
  State<AboutProjectPage> createState() => _AboutProjectPageState();
}

class _AboutProjectPageState extends State<AboutProjectPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "About",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "search for the components here!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
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
              ),
            ),

            // body
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter UI Components",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Center(
              child: Container(
                height: size.height * 0.42,
                width: size.width * 0.93,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 64, 183, 0.13),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Flutter UI Components are easy to use pre-designed plug and play collection of UI components which will be converted into a flutter package in the future. These make the layout of any iOS or Android application much quicker, simpler, affordable, compatible and easier to implement. Each one includes a variety of different widgets which can be customized to meet speicific needs of a project. Overall These will help you to save your time and efforts with a faster workflow. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "GitHub Link",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: size.height * 0.1,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(23, 8, 25, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        flex: 2,
                        child: Text(
                          "https://github.com/Clueless-Community/flutter-ui-components",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(Icons.copy),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Contributors",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                    itemCount:
                        10, //increase this count to automatically add new contributors or set to the length of from where you are importing
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.all(11.0),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(53, 63, 178, 0.85),
                          radius: 21,
                          child: CircleAvatar(
                            radius: 42,
                            backgroundImage:
                                AssetImage("assets/profile_photo.jpg"),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
