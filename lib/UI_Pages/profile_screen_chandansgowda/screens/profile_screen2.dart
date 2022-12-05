import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.light_mode_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Center(
                child: Stack(children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/41890434?v=4"),
                    radius: 60,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: CircleAvatar(child: Icon(Icons.edit, color: Colors.white,),backgroundColor: Colors.blue,),
                  )
                ]),
              ),
              Text("Chandan Gowda", style: GoogleFonts.poppins(fontSize: 30),),
              Text("chandan@example.com", style: GoogleFonts.poppins(fontSize: 15),),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              ElevatedButton(onPressed: (){}, child: Text("Upgrade to PRO"), style: ElevatedButton.styleFrom(
                shape: StadiumBorder()
              ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ProfileAttributeButton("Rating", "4.8"),
                VerticalDivider(),
                ProfileAttributeButton("Following", "54"),
                VerticalDivider(),
                ProfileAttributeButton("Followers", "2M"),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Text("Actively looking for Summer Internships | Youtuber 25k+ | Flutter | Python | Django | "
                  "CyberSec Lead @gdsc-jssstu | JPMC Code for Good'22 Winner",
              style: GoogleFonts.poppins(color: Colors.grey,fontSize: 15),textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileAttributeButton extends StatelessWidget {
  final String title, value;
  ProfileAttributeButton(this.title,this.value);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      onPressed: () { },
      child: Column(
        children: [
          Text(value, style: GoogleFonts.poppins(fontSize: 35),),
          Text(title, style: GoogleFonts.poppins(fontSize: 15),)
        ],
      ),
    );
  }
}
