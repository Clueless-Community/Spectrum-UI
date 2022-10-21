import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: SizedBox(
        height: 270,
        width: 800,
        child: Stack(
          children: [
            SizedBox(
              height: 250,
              child: ClipPath(
                  clipper: ShapeClipper(),
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFFB12341),
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 160,
                width: 160,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        color: Colors.yellow,
                        height: 140,
                        width: 140,
                        child: Image.network(
                          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1085&q=80",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Container(
                          color: Color(0xFFF99D5F3),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.camera_enhance_rounded)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height * 3 / 5);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height * 2 / 5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(ShapeClipper oldClipper) => false;
}
