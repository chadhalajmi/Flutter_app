import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Activity.dart';
import 'Bottom_nav_bar.dart';
import 'Home.dart';
import 'Profile.dart';
import 'Volatility.dart';

class MENU_SCREEN extends StatefulWidget {
  const MENU_SCREEN({Key? key}) : super(key: key);

  @override
  _MENU_SCREENState createState() => _MENU_SCREENState();
}

class _MENU_SCREENState extends State<MENU_SCREEN> {
  @override
  Widget build(BuildContext context) {
    return
      Material(
      color: Colors.indigo,
      child: Padding(padding: const EdgeInsets.only(left: 16.0),
        child:
        Align(
          alignment: Alignment.centerLeft,
          child:Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20 , 20, 20),
                    child: CircleAvatar(
                      radius: 52.0,
                      backgroundImage:  AssetImage('images/laevitas.png'),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0 , 10, 20),
                child: Text("Laevitas",
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 27.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0 , 10, 20),
                child: Row(
                  children: [
                    Icon(Icons.home, color: Colors.white,),
                    SizedBox(width: 10,),
                InkWell(
                  child:Text(
                        "Home",style:TextStyle(color: Colors.white, fontSize: 27),
                      ),
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context)=> MAIN_SCREEN()));
                  },
                )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0 , 10, 20),
                child: Row(
                  children: [
                    Icon(Icons.auto_awesome_mosaic_outlined, color: Colors.white,),
                    SizedBox(width: 10,),
                    InkWell(
                      child:  Text(
                        "Activity",style:TextStyle(color: Colors.white, fontSize: 27),
                      ),
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=> ActivityTest()));
                      },
                    )

                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0 , 10, 20),
                child: Row(
                  children: [
                    Icon(Icons.analytics_outlined, color: Colors.white,),
                    SizedBox(width: 10,),
                    InkWell(
                      child:Text(
                        "Volatility",style:TextStyle(color: Colors.white, fontSize: 27),
                      ),
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=> VolatilityTest()));
                      },
                    )

                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0 , 10, 20),
                child: Row(
                  children: [
                    Icon(Icons.supervisor_account_outlined, color: Colors.white,),
                    SizedBox(width: 10,),
                    InkWell(
                      child:Text(
                        "Profile",style:TextStyle(color: Colors.white, fontSize: 27),
                      ),
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=> ProfileTest()));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0 , 10, 20),
                child: Row(
                  children: [
                    Icon(Icons.transfer_within_a_station_rounded, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text("LogOut",style:TextStyle(color: Colors.white, fontSize: 27),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child:InkWell(
                  child:
                  Text(
                      "Go to website: app.laevitas.ch/",
                  ),
                  ),
                ),
            ],
          ),
        ),
       ),
    );
  }
}
