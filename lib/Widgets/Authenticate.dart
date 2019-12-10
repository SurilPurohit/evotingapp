import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

void main() => runApp(MaterialApp(
      home: MyAuth(),
      debugShowCheckedModeBanner: false,
    )
    );

class MyAuth extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyAuth> {
    final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool _canCheckBiometric = false;
  String _authorizedOrNot = "Not Authorized";
  List<BiometricType> _availableBiometricTypes = List<BiometricType>();

  Future<void> _checkBiometric() async {
    bool canCheckBiometric = false;
    try {
      canCheckBiometric = await _localAuthentication.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _canCheckBiometric = canCheckBiometric;
    });
  }

  Future<void> _getListOfBiometricTypes() async {
    List<BiometricType> listofBiometrics;
    try {
      listofBiometrics = await _localAuthentication.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _availableBiometricTypes = listofBiometrics;
    });
  }

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Please authenticate to complete your transaction",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
        _authorizedOrNot = "Authorized";
      } else {
        _authorizedOrNot = "Not Authorized";
      }
    });
  }

@override
  Widget build(BuildContext context) {
    return new Container(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        /*width: 192.0,
        height: 62.0,
        margin: EdgeInsets.only(left:50.0),*/
        padding: EdgeInsets.only(left: 2.0, top: 35.0),

      child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Can we check Biometric : $_canCheckBiometric",
              style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(1.0),
            )),
            RaisedButton(
              onPressed: _checkBiometric,
              child: Text("Check Biometric"),
              color: Colors.red[200],
              colorBrightness: Brightness.light,
            ),
  

            Text("List Of Biometric : ${_availableBiometricTypes.toString()}",
              style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(1.0),
            )),
            RaisedButton(
              onPressed: _getListOfBiometricTypes,
              child: Text("List of Biometric Types"),
              color: Colors.red[200],
              colorBrightness: Brightness.light,
            ),
            

            Text("Authorized : $_authorizedOrNot",
              style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(1.0),
            )),
            RaisedButton(
              onPressed: _authorizeNow,
              child: Text("Authorize now"),
              color: Colors.red[200],
              colorBrightness: Brightness.light,
            ),
          ],
      )
      )
    );
  }}