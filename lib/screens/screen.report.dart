import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double rong = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  //Tạo Button Back
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          label: const Text(''),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        child: Text(
                          'Create Location',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Tạo Name
                  TextBox(
                    50,
                    (rong - 60),
                    'Your Name (*)',
                    'e.g.Nguyen Van A',
                    TextInputType.name,
                    null,
                  ),
                  //Tạo Date
                  TextBox(
                    50,
                    (rong - 60),
                    'Date (*)',
                    'e.g. XX/XX/XXXX',
                    TextInputType.datetime,
                    Icons.calendar_month_outlined,
                  ),
                  //Tạo Location
                  TextBox(
                    50,
                    (rong - 60),
                    'Location (*)',
                    'e.g. Street, District, City',
                    TextInputType.streetAddress,
                    Icons.location_on_outlined,
                  ),
                  //Tạo Image location
                  Stack(
                    children: [
                      TextBox(
                        200,
                        (rong - 60),
                        'Image location (*)',
                        '',
                        null,
                        null,
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        margin: const EdgeInsets.only(top: 70, left: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black.withOpacity(0.485),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Select Files',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: (rong - 60 - 40),
                        margin: const EdgeInsets.only(top: 110, left: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                  //Tạo button submit
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(
                      top: 40,
                      right: 20,
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.upload_file_outlined,
                        size: 50,
                        color: Colors.white70,
                      ),
                      label: const Text(''),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Tạo Box{indexHeight, indexWeight, indexTitle, indexHint, indexTypeInput, indexIcon}
class TextBox extends StatelessWidget {
  const TextBox(this.indexHeight, this.indexWidth, this.index, this.indexHint,
      this.indexType, this.indexIcon,
      {super.key});
  final double indexHeight;
  final double indexWidth;
  final String index;
  final String indexHint;
  final IconData? indexIcon;
  final TextInputType? indexType;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 5),
          child: Text(
            index,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: indexHeight,
          width: indexWidth,
          margin: const EdgeInsets.only(top: 60, left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromRGBO(28, 28, 28, 1),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              cursorColor: Colors.white,
              keyboardType: indexType,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 15),
                hintText: indexHint,
                hintStyle: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white30,
                ),
              ),
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 73, left: 295),
          child: Icon(
            indexIcon,
            color: Colors.white60,
          ),
        )
      ],
    );
  }
}
