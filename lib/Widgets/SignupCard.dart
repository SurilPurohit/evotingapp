import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(920),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Sign Up to Vote",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Aadhar Card Number",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Aadhar Number of 12 digits",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Election Card Number",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Election Card Number",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
                        SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("PAN Card Number",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Pan Card Linked to Aadhaar Card",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Passport Number",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Passport Number Mandatory for NRI",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Mobile Number for OTP Verification",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Mobile Number Linked to Aadhaar Card",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
            
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Email ID",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              decoration: InputDecoration(
                  hintText: "Email Id",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
