import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transparent_image/transparent_image.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();




  void pushHomePage() {
    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomePage()));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage.memoryNetwork(
              width:320.0/1.5,
              height: 378.0/1.5,
              image: "https://cdn.discordapp.com/attachments/303728940634210304/1182137297194455110/bradynorums.png?ex=65839a26&is=65712526&hm=d43336179083f3d8fb68695cc4140ce47b3e99e0730ffcea802e684b444ae985&",
              //hosting an image on discord surely this will not blow up in my face
              placeholder: kTransparentImage,
            ),
            SizedBox(height: 16.0),
            SizedBox(
              width:400.0,
              child:TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelStyle: TextStyle(fontFamily: GoogleFonts.openSans().fontFamily),
                  labelText: 'Username',
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              width: 400.0,
              child:TextFormField(
                
                controller: _passwordController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: 'Password',
                  labelStyle: TextStyle(fontFamily: GoogleFonts.openSans().fontFamily),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                obscureText: true,
              )
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 29, 29, 29)
                  ),
                  onPressed: () {_passwordController.clear(); _emailController.clear();},
                  child: Text('Cancel', style: TextStyle(color: Colors.grey)),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    pushHomePage();
                    // Perform login validation here
                    // For demonstration purposes, let's just print the email and password
                    print('Email: $email');
                    print('Password: $password');
                  },
                  child: Text('Login'),
                ),

              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
