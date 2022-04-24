import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        'assets/images/profile_picture.jpg',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Apata Victoria',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'apatavictoria74@gmail.com',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 50,
                      width: 500,
                      child: Center(
                        child: Text(
                          'Upgrade to Premium',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Your order history',
                      icon: Icons.shopping_bag_outlined,
                      arrowShown: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Help and support',
                      icon: Icons.help_outline,
                      arrowShown: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Load gift voucher',
                      icon: Icons.card_giftcard,
                      arrowShown: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Logout',
                      icon: Icons.logout_outlined,
                      arrowShown: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      height: 50,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Icon(
              icon,
              size: 35,
              color: Colors.black,
            ),
          ),
          Text(
            '$text',
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          arrowShown
              ? Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
