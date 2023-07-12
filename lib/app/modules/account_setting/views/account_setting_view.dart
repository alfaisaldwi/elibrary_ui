// ignore_for_file: prefer_const_constructors

import 'package:elibrary_ui/app/modules/edit_profile/controllers/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettingView extends GetView<AccountSettingView> {
  @override
  Widget build(BuildContext context) {
    int? selectedOption;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(color: Color(0xffFF735C)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Text(
                            "Profile",
                            style: GoogleFonts.roboto(
                              letterSpacing: 2.5,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          Image.asset(
                            'assets/images/heading_detail.png',
                            width: 60,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            height: 550,
                            margin: EdgeInsets.only(top: 48),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 100,
                                        ),
                                        Text(
                                          'IDXXXXXXXXX',
                                          style: GoogleFonts.inter(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('ID')),
                                        TextFormField(
                                          initialValue: 'IDXXXXXXXXX',
                                          decoration: InputDecoration(
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Email')),
                                        TextFormField(
                                          initialValue: 'Keyshaar@gmail.com',
                                          decoration: InputDecoration(
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                            suffix: Text(
                                              'Change Email',
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blue,
                                                  fontSize: 12),
                                            ),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Password')),
                                        TextFormField(
                                          initialValue: '********',
                                          decoration: InputDecoration(
                                            floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                            suffix: Text(
                                              'Change Password',
                                              style: GoogleFonts.roboto(
                                                  color: Colors.blue,
                                                  fontSize: 12),
                                            ),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        SizedBox(height: 25.0),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            height: 46,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.8),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: Offset(0,
                                                      3), // Atur posisi bayangan
                                                ),
                                              ],
                                            ),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xff4054B1)),
                                              child: Text(
                                                'SAVE',
                                                style: GoogleFonts.roboto(
                                                  letterSpacing: 2.5,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onPressed: () async {
                                                Get.back();
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Transform.scale(
                            scale: 2.2, // Faktor perbesaran
                            child: CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffFF735C),
                                    radius: 12.0,
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 15.0,
                                      color: Color(0xFF404040),
                                    ),
                                  ),
                                ),
                                radius: 38.0,
                                backgroundImage:
                                    AssetImage('assets/images/avatar.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
