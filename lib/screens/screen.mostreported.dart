import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostReportedScreen extends StatelessWidget {
  const MostReportedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(CupertinoIcons.arrowtriangle_left_fill),
                  label: const Text(''),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(shrinkWrap: true, children: const <Widget>[
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
              AddressBox(),
            ]),
          )
        ],
      )),
    );
  }
}

class AddressBox extends StatelessWidget {
  const AddressBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 380,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(28, 28, 28, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    'District',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Detail Adress',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
