import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        backgroundColor: Color(0xffA87FF3),
        title: Row(
          children: [
            Image.asset('images/Logo.png'),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'MovieDB',
                style: GoogleFonts.poppins(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 14),
                height: MediaQuery.of(context).size.height * 0.042,
                width: MediaQuery.of(context).size.width * 0.48,
                child: TextField(
                  onChanged: (txt) {
                    print(txt);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffE9DFFC),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ))
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      endDrawer: Container(
        child: Drawer(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  }
}
