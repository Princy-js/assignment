import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Music_ui_3(),));
}
class Music_ui_3 extends StatelessWidget {
  const Music_ui_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Now Playing",style: GoogleFonts.alegreyaSans(
                    color: Colors.pink[50],
                    fontSize: 36,
                    fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: 280,
                  height: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage("https://atwoodmagazine.com/wp-content/uploads/2023/01/Flowers-Miley-Cyrus-music-video-screenshot-a.jpeg"))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Flowers",style: GoogleFonts.alegreyaSans(
                    color: Colors.pink[50],
                    fontSize: 36,
                    fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("Miley Cyrus",style: GoogleFonts.alegreyaSans(
                    color: Colors.pink[50],
                    fontSize: 22,
                    ),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage("assets/images/Screenshot__135_-removebg-preview.png")),

              ListTile(
                leading: Text("00.03",style: GoogleFonts.alegreyaSans(
                  color: Colors.pink[50],
                  fontSize: 22,
                ),),
                trailing: Text("03.21",style: GoogleFonts.alegreyaSans(
                  color: Colors.pink[50],
                  fontSize: 22,
                ),),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Column(
                  children: [
                    Icon(Icons.file_download,color: Colors.pink[50],),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Icon(Icons.volume_down_alt,color: Colors.pink[50],),
                    )
                  ],
                ),
                title: Row(
                  children: [
                    Icon(Icons.shuffle_sharp,color: Colors.pink[50],),
                    SizedBox(width: 20,),
                    Icon(Icons.skip_previous,color: Colors.pink[50],size: 50,),
                    CircleAvatar(
                      maxRadius: 22,
                      backgroundColor: Colors.pink[100],
                        child: Icon(Icons.pause,color: Colors.white,)),
                    Icon(Icons.skip_next,color: Colors.pink[50],size: 50,),
                    SizedBox(width: 20,),
                    Icon(Icons.refresh_sharp,color: Colors.pink[50],size: 30,),
                  ],
                ),
                trailing: Column(
                  children: [
                    Icon(Icons.file_download,color: Colors.pink[50],),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Icon(Icons.volume_down_alt,color: Colors.pink[50],),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text("Playlist  |  Lyrics  ",style: GoogleFonts.alegreyaSans(
                color: Colors.pink[50],
                fontSize: 22,
              ),)

            ],
          ),
        ),
      ),
    );
  }
}
