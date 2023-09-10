import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 50),
                        child: Text(
                          'Create Location',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(10, 12, 0),
                        // margin: EdgeInsets.only(top: 12),
                        // alignment: Alignment.lef,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                          label: const Text(''),
                          // style: ElevatedButton.styleFrom(
                          //   backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       margin: const EdgeInsets.only(top: 10, left: 30),
                  //       child: Text(
                  //         'Your Name (*)',
                  //         style: GoogleFonts.nunito(
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 18,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: (rong - 60),
                  //       margin: const EdgeInsets.only(top: 50, left: 30),
                  //       // padding: EdgeInsets.only(left: 100, right: 100),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12),
                  //         color: const Color.fromRGBO(28, 28, 28, 1),
                  //       ),
                  //       child: Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: Text(
                  //             'e.g: Nguyen Van A',
                  //             style: GoogleFonts.nunito(
                  //               fontWeight: FontWeight.w700,
                  //               fontSize: 18,
                  //               color: Colors.white30,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       margin: const EdgeInsets.only(top: 20, left: 30),
                  //       child: Text(
                  //         'Date (*)',
                  //         style: GoogleFonts.nunito(
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 18,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: (rong - 60),
                  //       margin: const EdgeInsets.only(top: 60, left: 30),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12),
                  //         color: const Color.fromRGBO(28, 28, 28, 1),
                  //       ),
                  //       child: Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: Text(
                  //             'e.g: XX/XX/XXXX',
                  //             style: GoogleFonts.nunito(
                  //               fontWeight: FontWeight.w700,
                  //               fontSize: 18,
                  //               color: Colors.white30,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       margin: const EdgeInsets.only(top: 73, left: 320),
                  //       child: const Icon(
                  //         Icons.calendar_month_outlined,
                  //         color: Colors.white60,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       margin: const EdgeInsets.only(top: 20, left: 30),
                  //       child: Text(
                  //         'Location (*)',
                  //         style: GoogleFonts.nunito(
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 18,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: (rong - 60),
                  //       margin: const EdgeInsets.only(top: 60, left: 30),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12),
                  //         color: const Color.fromRGBO(28, 28, 28, 1),
                  //       ),
                  //       child: Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: Text(
                  //             'e.g: Street, District, City',
                  //             style: GoogleFonts.nunito(
                  //               fontWeight: FontWeight.w700,
                  //               fontSize: 18,
                  //               color: Colors.white30,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       margin: const EdgeInsets.only(top: 73, left: 320),
                  //       height: 20,
                  //       width: 20,
                  //       child: const Icon(
                  //         Icons.location_on_outlined,
                  //         color: Colors.white60,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       margin: const EdgeInsets.only(top: 20, left: 30),
                  //       child: Text(
                  //         'Image location (*)',
                  //         style: GoogleFonts.nunito(
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 18,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 200,
                  //       width: (rong - 60),
                  //       margin: const EdgeInsets.only(top: 60, left: 30),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(12),
                  //         color: const Color.fromRGBO(28, 28, 28, 1),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 30,
                  //       width: 100,
                  //       margin: const EdgeInsets.only(top: 70, left: 50),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(5),
                  //         color: Colors.black.withOpacity(0.485),
                  //       ),
                  //       child: Align(
                  //         alignment: Alignment.center,
                  //         child: Text(
                  //           'Select Files',
                  //           style: GoogleFonts.nunito(
                  //             fontWeight: FontWeight.w700,
                  //             fontSize: 14,
                  //             color: Colors.white60,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 2,
                  //       width: (rong - 60 - 40),
                  //       margin: const EdgeInsets.only(top: 110, left: 50),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(5),
                  //         color: Colors.black.withOpacity(0.3),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
