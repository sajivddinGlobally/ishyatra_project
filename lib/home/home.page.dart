import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tabyatra = 0;

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

  String selectedValue = "Pilgrimage Type";
  List<String> options = ["Data 1", "Data 2", "Data 3"];

  void showDiologBox() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shadowColor: Color.fromARGB(63, 0, 0, 0),
          backgroundColor: Colors.white,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(23.r),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 216.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.r),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 14.w, top: 14.h, right: 14.w),
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
                              width: 155.w,
                              height: 37.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
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
                                        ? "Start Date"
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
                                        Navigator.pop(
                                          context,
                                        ); // Close the popup manually
                                      },
                                      value: option,
                                      child: Text(option),
                                    ),
                                  )
                                  .toList();
                            },
                            child: Container(
                              width: 155.w,
                              height: 37.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
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
                  Container(
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r),
                  ),
                  child: Image.asset(
                    "assets/homepageimage.png",
                    width: MediaQuery.of(context).size.width,
                    height: 270.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 66.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SizedBox(width: 18.w),
                            Text(
                              "Hello, Ajay!",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              width: 36.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: Center(
                                child: Image.asset("assets/profile.png"),
                              ),
                            ),
                            SizedBox(width: 15.w),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.w),
                        child: Text(
                          "Let’s Start Your \nSeamless Sacred Journey ",
                          style: GoogleFonts.inter(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(right: 30.w, left: 18.w),
                        child: GestureDetector(
                          onTap: () {
                            showDiologBox();
                          },
                          child: Container(
                            width: 430.w,
                            height: 58.h,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(40.r),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 10.w),
                                Icon(Icons.search, color: Colors.white),
                                SizedBox(width: 10.h),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Search Places",
                                      style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Start Date",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Container(
                                          width: 5.w,
                                          height: 5.h,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          "Pilgrimage Type",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 25.h),
              child: Text(
                "Pilgrimage Packages",
                style: GoogleFonts.stoke(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E3E62),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 9.h),
              child: SizedBox(
                // color: Colors.yellow,
                height: 35.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabyatra = 0;
                        });
                      },
                      child: DhamBody(
                        bordercolor:
                            tabyatra == 0
                                ? Color(0xFFFE7743)
                                : Color(0xFFCFCCD2),
                        txt: "Char Dham Yatra",
                        txtcolor:
                            tabyatra == 0
                                ? Color(0xFFFE7743)
                                : Color(0xFF354B5A),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabyatra = 1;
                        });
                      },
                      child: DhamBody(
                        bordercolor:
                            tabyatra == 1
                                ? Color(0xFFFE7743)
                                : Color(0xFFCFCCD2),
                        txt: "Himalayan Char Dham",
                        txtcolor:
                            tabyatra == 1
                                ? Color(0xFFFE7743)
                                : Color(0xFF354B5A),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          tabyatra = 2;
                        });
                      },
                      child: DhamBody(
                        bordercolor:
                            tabyatra == 2
                                ? Color(0xFFFE7743)
                                : Color(0xFFCFCCD2),
                        txt: "Jhotirling Yatra",
                        txtcolor:
                            tabyatra == 2
                                ? Color(0xFFFE7743)
                                : Color(0xFF354B5A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 440.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                          top: 17.h,
                          right: 10.w,
                        ),
                        child: Container(
                          width: 335.w,
                          height: 410.h,
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
                                  top: 8.h,
                                  right: 15.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Yatra(
                                      image: "assets/pickup.png",
                                      txt: "PickUp",
                                    ),
                                    Yatra(image: "assets/Bus.png", txt: "AC"),
                                    Yatra(
                                      image: "assets/temple.png",
                                      txt: "Temple",
                                    ),
                                    Yatra(
                                      image: "assets/lodgin.png",
                                      txt: "Lodging",
                                    ),
                                    Yatra(
                                      image: "assets/insights.png",
                                      txt: "Insights",
                                    ),
                                    Yatra(
                                      image: "assets/return.png",
                                      txt: "Return",
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.w,
                                  right: 10.w,
                                  top: 8.h,
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
                                        letterSpacing: -0.1,
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35.r),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Color(0xFFFFFFFF),
            selectedLabelStyle: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            backgroundColor: Color(0xFFFF6500),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: "Discover",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded),
                label: "Bookings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.whatshot_outlined),
                label: "Hot Deal",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: "Notification",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Yatra extends StatelessWidget {
  final String image;
  final String txt;
  const Yatra({super.key, required this.image, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 30.w, height: 30.h, fit: BoxFit.cover),
        SizedBox(height: 10.h),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: Color(0xFF1E3E62),
          ),
        ),
      ],
    );
  }
}

class DhamBody extends StatelessWidget {
  final Color bordercolor;
  final String txt;
  final Color txtcolor;
  const DhamBody({
    super.key,
    required this.bordercolor,
    required this.txt,
    required this.txtcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 139.w,
      height: 31.h,
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor),
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 14.w, right: 14.w),
        child: Center(
          child: Text(
            txt,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: txtcolor,
            ),
          ),
        ),
      ),
    );
  }
}
