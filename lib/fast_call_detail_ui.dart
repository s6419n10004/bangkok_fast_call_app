import 'package:bangkok_fast_call_app/models/fastcalllist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FastCallDetailUI extends StatefulWidget {
  FastCallList? fastcalllist;

  FastCallDetailUI({super.key, this.fastcalllist});

  @override
  State<FastCallDetailUI> createState() => _FastCallDetailUIState();
}

class _FastCallDetailUIState extends State<FastCallDetailUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 226, 226),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          widget.fastcalllist!.amName,
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 10,
                height: MediaQuery.of(context).size.width * 0.50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/' + widget.fastcalllist!.amImage),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.hospital,
                    color: Colors.white,
                  ),
                  title: Text(
                    'ชื่อโรงพยาบาล :' + widget.fastcalllist!.amName,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _makePhoneCall(widget.fastcalllist!.amPhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.green,
                  ),
                  title: Text(
                    'เบอร์โรงพยาบาล:' + widget.fastcalllist!.amPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(
                        widget.fastcalllist!.amFacebook,
                      ),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.facebook,
                    color: Color(0xFF426783),
                  ),
                  title: Text(
                    'facebook :' + widget.fastcalllist!.amFacebook,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(
                        widget.fastcalllist!.amWeb,
                      ),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'web :' + widget.fastcalllist!.amWeb,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                      Uri.parse(
                          'https://www.google.com/maps/search/?api=1&query=' +
                              widget.fastcalllist!.amLatitude +
                              ',' +
                              widget.fastcalllist!.amlongtitude),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.mapMarked,
                    color: Colors.red,
                  ),
                  title: Text(
                    'สถานที่โรงพยาบาล Let\'s go',
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
