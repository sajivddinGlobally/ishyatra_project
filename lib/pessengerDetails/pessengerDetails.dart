import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class PessengerDetails extends StatefulWidget {
  const PessengerDetails({super.key});

  @override
  State<PessengerDetails> createState() => _PessengerDetailsState();
}

class _PessengerDetailsState extends State<PessengerDetails> {
  DateTime? startDate;
  DateTime? endDate;

  // For Start Date
  Future<void> selectStartDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        startDate = picked;
      });
    }
  }

  // For End Date
  Future<void> selectEndDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        endDate = picked;
      });
    }
  }

  String selectedValue = "Char Dham";
  List<String> options = ["Data 1", "Data 2", "Data 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFFFFF),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.grey, size: 40.sp),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20.w),
            width: 61.w,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Color(0xFFD9D9D9),
            ),
            child: Center(
              child: Text(
                "Edit",
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8A909B),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 110.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xFFFBECE8),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 14.w, right: 14.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kedarnath Yatra",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Color(0xFF0B192C),
                          ),
                        ),
                        Text(
                          "13,000 X 2",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.sp,
                            color: Color(0xFF0B192C),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3 Days 4 Nights",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.sp,
                            color: Color(0xFF0B192C),
                          ),
                        ),
                        Text(
                          "26,000 INR",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Color(0xFF0B192C),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xFFCFCCD2), thickness: 1),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFF273F4F),
                          size: 15.sp,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "PickUp: Rudraprayag district, Uttarakhand",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF273F4F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 66.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Color(0xFF1E3E62), width: 1.w),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Date",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0B192C),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectStartDate();
                        },
                        child: Text(
                          startDate == null
                              ? "SEP 19"
                              : DateFormat('MMMM dd').format(startDate!),
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0B192C),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "End Date",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF0B192C),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectEndDate();
                        },
                        child: Text(
                          endDate == null
                              ? "SEP 23"
                              : DateFormat('MMMM dd').format(endDate!),
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0B192C),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 11.h),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 66.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Color(0xFF1E3E62), width: 1.w),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15.w),
                  Text(
                    "Total Number of people",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0B192C),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 55.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xFFFBECE8),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(),
                      style: TextStyle(height: 0.9),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 18.h),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),
            ),
          ),
          SizedBox(height: 13.h),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Color(0xFF1E3E62), width: 1.w),
              ),
              child: ExpansionTile(
                // leading: Container(
                //   width: 10.w,
                //   height: 10.h,
                //   decoration: BoxDecoration(
                //     color: Colors.black,
                //     shape: BoxShape.circle,
                //   ),
                // ),
                title: Text(
                  "Traveller Details",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0B192C),
                  ),
                ),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  side: BorderSide(color: Color(0xFF1E3E62), width: 1.w),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(color: Color(0xFFCFCCD2)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Specify Traveller",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF0B192C),
                              ),
                            ),
                            PopupMenuButton<String>(
                              onSelected: (value) {
                                setState(() {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                });
                              },
                              itemBuilder:
                                  (context) => [
                                    PopupMenuItem<String>(
                                      value: 'Option 1',
                                      child: Text('Option 1'),
                                    ),
                                    PopupMenuItem<String>(
                                      value: 'Option 2',
                                      child: Text('Option 2'),
                                    ),
                                    PopupMenuItem<String>(
                                      value: 'Option 3',
                                      child: Text('Option 3'),
                                    ),
                                  ],
                              child: Container(
                                width: 149.w,
                                height: 25.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Color(0xFFFBECE8),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 15.w),
                                    Text(
                                      "$selectedValue",
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF0B192C),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Color(0xFF0B192C),
                                    ),
                                    SizedBox(width: 10.w),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
