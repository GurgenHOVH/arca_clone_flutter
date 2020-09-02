import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isFingerprintEnabled = true;
  bool hideAmount = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F7F9),
      appBar: AppBar(title: Text('Կարգավորումներ')),
      body: Column(
        children: [
          Expanded(
              flex: 9,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(title: Text('Հայերեն')),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 20, bottom: 40),
                      child: Text(
                        'Լեզուն փոխելուց հետո հավելվածը կվերագործարկվի',
                        style: TextStyle(
                          color: Color(0xff7B7B7B),
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        title: Text('Մատնահետք'),
                        trailing: Switch(
                          value: isFingerprintEnabled,
                          onChanged: (value) {
                            setState(() {
                              isFingerprintEnabled = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 20, bottom: 40),
                      child: Text(
                        'Հավելվածից դուրս գալու կամ 15 րոպե չգործարկելու դեպքում կպահանջվի մատնահետքի ստուգում',
                        style: TextStyle(
                          color: Color(0xff7B7B7B),
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: ListTile(
                        title: Text('Քողարկել հաշվի մնացորդը'),
                        trailing: Switch(
                          value: hideAmount,
                          onChanged: (value) {
                            setState(() {
                              hideAmount = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 20, bottom: 40),
                      child: Text(
                        'Անջատել հաշվի մնացորդի քողարկումը',
                        style: TextStyle(
                          color: Color(0xff7B7B7B),
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsetsDirectional.only(bottom: 20),
              alignment: Alignment.bottomCenter,
              child: Text('Arca 1.1.3 (16)'),
            ),
          )
        ],
      ),
    );
  }
}
