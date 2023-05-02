import 'package:bangkok_fast_call_app/fast_call_detail_ui.dart';
import 'package:bangkok_fast_call_app/models/fastcalllist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FastCallHomeUI extends StatefulWidget {
  const FastCallHomeUI({super.key});

  @override
  State<FastCallHomeUI> createState() => _FastCallHomeUIState();
}

class _FastCallHomeUIState extends State<FastCallHomeUI> {



  
  List<FastCallList> fastcalllist = [
    FastCallList(
      amImage: 's1.jpg',
      amName: 'โรงพยาบาลศิริราชปิยมหาราชการุณ',
      amPhone: '1474',
      amWeb: 'https://www.siphhospital.com/th/home',
      amFacebook: 'https://www.facebook.com/piyamaharajkarun/?locale=th_TH',
      amLatitude: '13.7598859',
      amlongtitude: '100.4856227',
    ),
    FastCallList(
      amImage: 's2.png',
      amName: 'โรงพยาบาลจุฬาลงกรณ์ สภากาชาดไทย',
      amPhone: '02-256-4000',
      amWeb: 'https://chulalongkornhospital.go.th/kcmh/',
      amFacebook: 'https://www.facebook.com/ChulalongkornHospital/',
      amLatitude: '13.7306674',
      amlongtitude: '100.5341925',
    ),
    FastCallList(
      amImage: 's3.jpg',
      amName: 'โรงพยาบาลราชวิถี',
      amPhone: ' 02-206-2900',
      amWeb: 'https://www.rajavithi.go.th/',
      amFacebook: 'https://www.facebook.com/PR.Rajavithi/?locale=th_TH',
      amLatitude: '13.7643024',
      amlongtitude: '100.53193',
    ),
    FastCallList(
      amImage: 's4.jpg',
      amName: 'โรงพยาบาลตากสิน',
      amPhone: '02-437-0123',
      amWeb: 'https://www.taksinhosp.go.th/',
      amFacebook: 'https://m.facebook.com/PR.Taksin/photos/a.109617080810423/484722739966520/?type=3&eid=ARCSFYLrQk2RGvYfM2VUUXyavXrVI6Vn_6iRzOyhKHkEGoX1k6fd_2x_bQk-BYOISdB93ZKuQUvxdkWM',
      amLatitude: '13.7304755',
      amlongtitude: '100.5060635',
    ),
    FastCallList(
      amImage: 's5.jpg',
      amName: 'โรงพยาบาลสมเด็จพระปิ่นเกล้ากรมแพทย์ทหารเรือ',
      amPhone: '02-475-2999',
      amWeb: 'https://www.spph.go.th/',
      amFacebook: 'https://www.facebook.com/PR.Pinklao/?locale=th_TH',
      amLatitude: '13.7097772',
      amlongtitude: '100.4837484',
    ),
    FastCallList(
      amImage: 's6.jpg',
      amName: 'โรงพยาบาลสมิติเวช',
      amPhone: '02-438-9000',
      amWeb: 'https://samitivejthonburi.com/th',
      amFacebook: 'https://www.facebook.com/SamitivejThonburiHospital/?locale=th_TH',
      amLatitude: '13.7144589',
      amlongtitude: '100.4133318',
    ),
    FastCallList(
      amImage: 's7.png',
      amName: 'โรงพยาบาลศรีธัญญา',
      amPhone: ' 02-528-7800',
      amWeb: 'https://www.srithanya.go.th/index.php?lang=th',
      amFacebook: 'https://www.facebook.com/%E0%B9%82%E0%B8%A3%E0%B8%87%E0%B8%9E%E0%B8%A2%E0%B8%B2%E0%B8%9A%E0%B8%B2%E0%B8%A5%E0%B8%A8%E0%B8%A3%E0%B8%B5%E0%B8%98%E0%B8%B1%E0%B8%8D%E0%B8%8D%E0%B8%B2-452768238208070/',
      amLatitude: '13.0390905',
      amlongtitude: '101.3376687',
    ),
    FastCallList(
      amImage: 's8.png',
      amName: 'โรงพยาบาลธนบุรี',
      amPhone: '02-487-2000',
      amWeb: 'https://www.thonburihospital.com/',
      amFacebook: 'https://www.facebook.com/thonburihospitalclub/?locale=th_TH',
      amLatitude: '13.752726',
      amlongtitude: '100.4417654',
    ),
    FastCallList(
      amImage: 's9.jpg',
      amName: 'โรงพยาบาลทหารผ่านศึก',
      amPhone: '02-644-9400-15',
      amWeb: 'https://www.vgh.go.th/',
      amFacebook: 'https://m.facebook.com/people/%E0%B9%82%E0%B8%A3%E0%B8%87%E0%B8%9E%E0%B8%A2%E0%B8%B2%E0%B8%9A%E0%B8%B2%E0%B8%A5%E0%B8%97%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%9C%E0%B9%88%E0%B8%B2%E0%B8%99%E0%B8%A8%E0%B8%B6%E0%B8%81-Veterans-General-Hospital/100026536274458/',
      amLatitude: '13.7724103',
      amlongtitude: '100.5491908',
    ),
    FastCallList(
      amImage: 's10.png',
      amName: 'โรงพยาบาลวิมุต',
      amPhone: '02-079-0000',
      amWeb: 'https://www.vimut.com/home',
      amFacebook: 'https://www.facebook.com/vimuthospital/?locale=th_TH',
      amLatitude: '13.7888116',
      amlongtitude: '100.5432457',
    ),
    FastCallList(
      amImage: 's11.png',
      amName: 'โรงพยาบาลบางมด',
      amPhone: '0-2867-0606',
      amWeb: 'http://www.bangmodhospital.com/about',
      amFacebook: 'https://www.facebook.com/MKTBangmodhos/?locale=th_TH',
      amLatitude: '13.6717765',
      amlongtitude: '100.4538997',
    ),
    FastCallList(
      amImage: 's12.jpg',
      amName: 'โรงพยาบาลบางปะกอก 9',
      amPhone: '1745',
      amWeb: 'https://bpk9internationalhospital.com/index.php',
      amFacebook: 'https://www.facebook.com/BPK9internationalhospital',
      amLatitude: '13.6818817',
      amlongtitude: '100.4719418',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 226, 217, 217),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนโรงพยาบาล',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.40,
              child: Image.asset(
                'assets/images/logo01.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: fastcalllist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:(context) => FastCallDetailUI(
                            fastcalllist: fastcalllist[index] ,
                          ), 
                          ),
                           );
                    },
                    leading: Image.asset(
                        'assets/images/' + fastcalllist[index].amImage),
                    title: Text(
                      fastcalllist[index].amName,
                      style: GoogleFonts.kanit(),
                    ),
                    subtitle: Text(
                      'Tel :' + fastcalllist[index].amPhone,
                    ),
                    trailing: Icon(
                      FontAwesomeIcons.arrowRight,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
