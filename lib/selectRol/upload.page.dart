import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ishyatra_app/selectRol/rol.page.dart';
import 'package:ishyatra_app/selectRol/verification.page.dart';
import 'package:permission_handler/permission_handler.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final firtsNameController = TextEditingController();
  final lastNameController = TextEditingController();

  File? image;
  final picker = ImagePicker();

  Future pickImageFromGallery() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      final PickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (PickedFile != null) {
        setState(() {
          image = File(PickedFile.path);
        });
      } else {
        print("Gallery permission denied");
      }
    }
  }

  Future pickImageFromCamera() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      final PickedFile = await picker.pickImage(source: ImageSource.camera);
      if (PickedFile != null) {
        setState(() {
          image = File(PickedFile.path);
        });
      } else {
        print("Camera permission denied");
      }
    }
  }

  Future showImage() async {
    showCupertinoModalPopup(
      context: context,
      builder:
          (context) => CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                  pickImageFromGallery();
                },
                child: Text("Gallery"),
              ),
              CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                  pickImageFromCamera();
                },
                child: Text("Camera"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/otpimage.png", fit: BoxFit.cover),
                Positioned(
                  top: 110.h,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.r),
                        topRight: Radius.circular(32.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 11.9.r,
                          spreadRadius: -1,
                          color: Color.fromARGB(63, 0, 0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Center(
                          child: Container(
                            width: 134.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Color.fromARGB(255, 217, 217, 217),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 15.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 217, 217, 217),
                              size: 40.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.w,
                            top: 25.h,
                            right: 20.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Register(
                                name: "Your First Name",
                                controller: firtsNameController,
                              ),
                              SizedBox(height: 13.h),
                              Register(
                                name: 'Last name',
                                controller: lastNameController,
                              ),
                              SizedBox(height: 34.h),
                              Text(
                                "Identity Verification",
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 11, 25, 44),
                                ),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                "Upload photo and get verified with Aadhar Card,\n driving license, NID etc",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 11, 25, 44),
                                ),
                              ),
                              SizedBox(height: 39.h),
                              Center(
                                child: DottedBorder(
                                  color: Color.fromARGB(255, 255, 151, 54),
                                  strokeWidth: 2,
                                  dashPattern: [6, 3],
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(
                                    12,
                                  ), // Border radius for rounded rectangles
                                  child: GestureDetector(
                                    onTap: () {
                                      showImage();
                                    },
                                    child: Container(
                                      width: 344.w,
                                      height: 155.h,
                                      child:
                                          image == null
                                              ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/upload.png",
                                                  ),
                                                  SizedBox(height: 10.h),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Upload files or",
                                                        style:
                                                            GoogleFonts.montserrat(
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    69,
                                                                    69,
                                                                    69,
                                                                  ),
                                                            ),
                                                      ),
                                                      Text(
                                                        " Browse",
                                                        style: GoogleFonts.montserrat(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                            255,
                                                            255,
                                                            101,
                                                            0,
                                                          ),
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          decorationColor:
                                                              Color.fromARGB(
                                                                255,
                                                                255,
                                                                101,
                                                                0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    "Supported formates: JPEG, PNG,PDF,",
                                                    style:
                                                        GoogleFonts.montserrat(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                            255,
                                                            69,
                                                            69,
                                                            69,
                                                          ),
                                                        ),
                                                  ),
                                                ],
                                              )
                                              : ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.r),
                                                child: Image.file(
                                                  image!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 66.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Column(
                            children: [
                              SizedBox(height: 50.h),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   CupertinoPageRoute(
                                  //     builder: (context) => VerificationPage(),
                                  //   ),
                                  // );
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    builder: (context) {
                                      return Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                        ),
                                        child:
                                            VerificationPage(), // ✅ Your OTP Page Here
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 51.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(41.r),
                                    color: Color.fromARGB(229, 255, 101, 0),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Continue",
                                          style: GoogleFonts.inter(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 30.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Register extends StatefulWidget {
  final String name;
  final TextEditingController controller;
  const Register({super.key, required this.name, required this.controller});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.name,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 39, 63, 79),
          ),
        ),
        SizedBox(height: 10.h),
        TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 30, 62, 98),
                width: 1.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 30, 62, 98),
                width: 1.w,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 30, 62, 98),
                width: 1.w,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 30, 62, 98),
                width: 1.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
