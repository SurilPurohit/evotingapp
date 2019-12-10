import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Vote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        /*width: 192.0,
        height: 62.0,
        margin: EdgeInsets.only(left:50.0),*/
        padding: EdgeInsets.only(left: 2.0, top: 35.0),
        child: new Column(
          children: <Widget>[
            
            new Row(children: <Widget>[
              Expanded(
                child: Center(
                  child: (
                    Image.asset(
                        "assets/BJP.png",
                        width: ScreenUtil.getInstance().setWidth(150),
                        height: ScreenUtil.getInstance().setHeight(120),
                    )
                  ),
                ),
              ),
              
              Expanded(
                child: Text(
                  "BJP",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.8),
                  ),
                )
              ),

              // Expanded(
              //   child: Radio(
              //     value: "BJP",
              //     groupValue: "Test",
              //     onChanged: (text) { print(text); },
              //     materialTapTargetSize: MaterialTapTargetSize.padded,
              //   ),
              // )
                                              
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                    width: 4.0,
                    )
                  )
                ),
              ),
              ]
            ),
                      
            Expanded(
            child: Divider()
            ),
            
            new Row(children: <Widget>[
              Expanded(
                child: Center(
                  child: (
                    Image.asset(
                        "assets/BSP.png",
                        width: ScreenUtil.getInstance().setWidth(150),
                        height: ScreenUtil.getInstance().setHeight(120),
                    )
                  ),
                ),
              ),
              
              Expanded(
                child: Text(
                  "BSP",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.8),
                  ),
                )
              ),
                                              
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                    width: 4.0,
                    )
                  )
                ),
              ),
              ]
            ),
            
            Expanded(
            child: Divider()
            ),

            new Row(children: <Widget>[
              Expanded(
                child: Center(
                  child: (
                    Image.asset(
                        "assets/NCP.png",
                        width: ScreenUtil.getInstance().setWidth(150),
                        height: ScreenUtil.getInstance().setHeight(120),
                    )
                  ),
                ),
              ),
              
              Expanded(
                child: Text(
                  "NCP",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.8),
                  ),
                )
              ),
                                              
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                    width: 4.0,
                    )
                  )
                ),
              ),
              ]
            ),
            
            Expanded(
            child: Divider()
            ),
            
            new Row(children: <Widget>[
              Expanded(
                child: Center(
                  child: (
                    Image.asset(
                        "assets/congress.png",
                        width: ScreenUtil.getInstance().setWidth(150),
                        height: ScreenUtil.getInstance().setHeight(120),
                    )
                  ),
                ),
              ),
              
              Expanded(
                child: Text(
                  "Congress",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.8),
                  ),
                )
              ),
                                              
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                    width: 4.0,
                    )
                  )
                ),
              ),
              ]
            ),

            Expanded(
            child: Divider()
            ),
            
            new Row(children: <Widget>[
              Expanded(
                child: Center(
                  child: (
                    Image.asset(
                        "assets/shivsena.png",
                        width: ScreenUtil.getInstance().setWidth(150),
                        height: ScreenUtil.getInstance().setHeight(120),
                    )
                  ),
                ),
              ),
              
              Expanded(
                child: Text(
                  "Shiv Sena",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.8),
                  ),
                )
              ),
                                              
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                    width: 4.0,
                    )
                  )
                ),
              ),
              ]
            ),          
          ],
        )
      )
    );
    
  }
}

/*
class BJPImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/BJP.png');
    Image image = new Image(image: assetImage, width: 200.0, height: 100,);
    return new Container(child: image);
  }
}

class BSPImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/BSP.png');
    Image image = new Image(image: assetImage, width: 200.0, height: 100,);
    return new Container(child: image);
  }
}

class NCPImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/NCP.png');
    Image image = new Image(image: assetImage, width: 200.0, height: 100,);
    return new Container(child: image);
  }
}

class CongressImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/congress.png');
    Image image = new Image(image: assetImage, width: 200.0, height: 100,);
    return new Container(child: image);
  }
}

class ShivSenaImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/shivsena.png');
    Image image = new Image(image: assetImage, width: 200.0, height: 100,);
    return new Container(child: image);
  }
}*/