
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DigitalBusinessCardApp());
}

class DigitalBusinessCardApp extends StatelessWidget {
  const DigitalBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kartu Nama Digital',
      home: BusinessCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: NetworkImage(
                    'https://scontent.cdninstagram.com/v/t51.82787-19/562677729_17914065486206404_7522306416761864202_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_cat=106&ccb=7-5&_nc_sid=f7ccc5&efg=eyJ2ZW5jb2RlX3RhZyI6InByb2ZpbGVfcGljLnd3dy4xMDY2LkMzIn0%3D&_nc_ohc=yFAK719l0OYQ7kNvwHMpwbD&_nc_oc=Adrv7MlbqymwRimVsr_9253QKP1OzyTlqqAac1gLdMbQQd65429-JGmgO6St-fjMnHhtJNHiHX5p3992HU9MWN3S&_nc_zt=24&_nc_ht=scontent.cdninstagram.com&_nc_gid=3-ghhmsm276gjbBmjbNhaQ&_nc_ss=7b689&oh=00_AQNzagrN8f7uJxtwGd2Y_em5aL81AIWe51hcbBu_ZJpV4g&oe=6AD7EC2E',
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Hafiz Alief Alfarizi',
                  style: GoogleFonts.pacifico(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'MAHASISWA & PROGRAMMER',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 20.0,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),

                // Kartu telepon
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '+62 856-0188-7464',
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),

                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'fizuard@gmail.com',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),

                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '@fizuard',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),

                // Kartu GitHub
                Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.code,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '@fizuard',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
