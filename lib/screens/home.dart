import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/longtermscreen.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import './longtermtitlecard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "databricks",
                style:
                    TextStyle(color: Colors.redAccent, fontFamily: 'Poppins'),
              ),
              leading: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/logo.png', width: 20.0),
              ),
              backgroundColor: Colors.white,
              shadowColor: Colors.white,
              elevation: 0.0,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ColoredBox(
                    color: Color(0xFFf2f2f2),
                    child: TabBar(
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: Colors.greenAccent,
                          width: 30.0,
                        ),
                        insets: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                      ),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FeatherIcons.briefcase,
                                color: Colors.black,
                                size: 18.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Long Term ",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FeatherIcons.dollarSign,
                                color: Colors.black,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Intraday ",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                LongTermScreen(),
                Icon(Icons.directions_transit),
              ],
            ),
            backgroundColor: Colors.white),
      ),
    );
  }
}
