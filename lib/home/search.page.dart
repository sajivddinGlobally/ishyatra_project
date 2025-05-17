import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ishyatra_app/tracking/tracking.page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  DateTime? selectDate;

  Future<void> selectData() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        selectDate = picked;
      });
    }
  }

  String selectedValue = "Char Dham";
  List<String> options = ["Data 1", "Data 2", "Data 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 213.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.r),
                      bottomRight: Radius.circular(60.r),
                    ),
                    color: Color(0xFF273F4F),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 50.h),
                    width: 393.w,
                    height: 216.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 11.9,
                          spreadRadius: -1,
                          color: Color.fromARGB(63, 0, 0, 0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.w,
                        top: 14.h,
                        right: 14.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF273F4F),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
                            width: MediaQuery.of(context).size.width,
                            height: 37.h,
                            child: TextField(
                              style: TextStyle(height: 1.h),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  // bottom: 25.h,
                                  right: 20.w,
                                ),
                                filled: true,
                                fillColor: Color(0xFFF2E8E5),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF273F4F),
                                  size: 20.sp,
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 30.w,
                                  minHeight: 20.h,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 9.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Start Date",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF273F4F),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      selectData();
                                    },
                                    child: Container(
                                      width: 160.w,
                                      height: 37.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                        color: Color(0xFFF2E8E5),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10.w),
                                          Icon(
                                            Icons.calendar_month,
                                            size: 20.sp,
                                            color: Color(0xFF273F4F),
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            selectDate == null
                                                ? "Select Date"
                                                : "${selectDate!.day}/${selectDate!.month}/${selectDate!.year}",
                                            style: GoogleFonts.inter(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF273F4F),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pilgrimage Type",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF273F4F),
                                    ),
                                  ),
                                  PopupMenuButton<String>(
                                    onSelected: (String value) {
                                      setState(() {
                                        selectedValue = value;
                                      });
                                    },
                                    itemBuilder: (BuildContext context) {
                                      return options
                                          .map(
                                            (option) => PopupMenuItem<String>(
                                              onTap: () {
                                                setState(() {
                                                  selectedValue = option;
                                                });
                                              },
                                              value: option,
                                              child: Text(option),
                                            ),
                                          )
                                          .toList();
                                    },
                                    child: Container(
                                      width: 160.w,
                                      height: 37.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                        color: Color(0xFFF2E8E5),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 6.w),
                                          Icon(
                                            Icons.directions_walk,
                                            size: 20.sp,
                                            color: Color(0xFF273F4F),
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            selectedValue,
                                            style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF273F4F),
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
                          SizedBox(height: 14.h),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => TrackingPage(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 37.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(41.r),
                                color: Color(0xFFFE7743),
                              ),
                              child: Center(
                                child: Text(
                                  "Search",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 25.w),
                Container(
                  width: 155.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(229, 255, 101, 0)),
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Char Dham Yatra",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(229, 255, 101, 0),
                        ),
                      ),
                      Icon(
                        Icons.close,
                        color: Color.fromARGB(229, 255, 101, 0),
                        size: 17.sp,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  width: 100.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(229, 255, 101, 0)),
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Clear All",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(229, 255, 101, 0),
                        ),
                      ),
                      Icon(
                        Icons.close,
                        color: Color.fromARGB(229, 255, 101, 0),
                        size: 17.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.w, top: 15.h),
              child: Text(
                "Total 13 results found",
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF273F4F),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.w,
                          right: 30.w,
                          top: 10.h,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 420.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.r),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 11.9,
                                spreadRadius: -1,
                                color: Color.fromARGB(63, 0, 0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.r),
                                  topRight: Radius.circular(32.r),
                                ),
                                child: Image.asset(
                                  "assets/home.png",
                                  width: double.infinity,
                                  height: 150.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.w,
                                  top: 8.h,
                                  right: 16.w,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Kedarnath Yatra",
                                      style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0B192C),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                      size: 20.sp,
                                    ),
                                    Text(
                                      "4.9",
                                      style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF1E3E62),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: Text(
                                  "3 Days 4 Nights",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF1E3E62),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.w,
                                  top: 10.h,
                                  right: 15.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    YatraSelect(
                                      image: "assets/pickup.png",
                                      txt: "PickUp",
                                    ),
                                    YatraSelect(
                                      image: "assets/Bus.png",
                                      txt: "AC",
                                    ),
                                    YatraSelect(
                                      image: "assets/temple.png",
                                      txt: "Temple",
                                    ),
                                    YatraSelect(
                                      image: "assets/lodgin.png",
                                      txt: "Lodging",
                                    ),
                                    YatraSelect(
                                      image: "assets/insights.png",
                                      txt: "Insights",
                                    ),
                                    YatraSelect(
                                      image: "assets/dropoff.png",
                                      txt: "DropOff",
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.w,
                                  right: 10.w,
                                  top: 10.h,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Discover sacred destinations with ease.\nComplete packages including lodging, meals,\nand guided support for a peaceful...",
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF1E3E62),
                                      ),
                                    ),
                                    SizedBox(height: 11.h),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          16.r,
                                        ),
                                        color: Color(0xFFF2E8E5),
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 10.w),
                                            Icon(
                                              Icons.location_on,
                                              color: Color(0xFF273F4F),
                                              size: 15.sp,
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              "PickUp: Delhi / Bengaluru",
                                              style: GoogleFonts.inter(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF273F4F),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6.h),
                                    Row(
                                      children: [
                                        Text(
                                          "20,000",
                                          style: GoogleFonts.inter(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: Color(0xFFFE7743),
                                            decorationThickness: 1,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7F94A3),
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          "13,000 /",
                                          style: GoogleFonts.inter(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF273F4F),
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          "Per Person",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF7F94A3),
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YatraSelect extends StatelessWidget {
  final String image;
  final String txt;
  const YatraSelect({super.key, required this.image, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.62),
            blurRadius: 4.06,
            spreadRadius: 0,
            color: Color.fromARGB(25, 0, 0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 17.w,
            height: 17.h,
            fit: BoxFit.cover,
            color: Color(0xFF1E3E62),
          ),
          SizedBox(height: 6.h),
          Text(
            txt,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              fontWeight: FontWeight.w300,
              color: Color(0xFF1E3E62),
            ),
          ),
        ],
      ),
    );
  }
}
